import 'dart:async';
import 'package:clipboard/clipboard.dart';
import 'package:dartz/dartz.dart';
import 'package:helpdesk/features/authentication/authentication.dart';

import 'package:helpdesk/models/failure.dart';
import 'package:helpdesk/utils/config.dart';
import 'package:helpdesk/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helpdesk/repositories/ticket_repository/models/ticket.dart';

part 'ticket_event.dart';
part 'ticket_state.dart';

part 'ticket_bloc.freezed.dart';
part 'ticket_bloc.g.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  TicketBloc({
    required this.ticketSlug,
    this.commentSlug,
    required this.config,
    required this.authenticationBloc,
  }) : super(const TicketState()) {
    on<_TicketFetched>(_onFetched);
    on<_TicketUpdated>(_onUpdated);
    on<_TicketCommentUrlCopied>(_onCommentUrlCopied);
  }

  final String ticketSlug;
  final String? commentSlug;
  final Config config;
  final AuthenticationBloc authenticationBloc;

  late List<dynamic> fullContent;
  late dynamic currentElement;

  FutureOr<void> _onFetched(event, Emitter<TicketState> emit) async {
    fullContent = [];

    try {
      // String url =
      //     apiConfig.apis.firstWhere((element) => element.slug == apiSlug).url;

      Either<Failure, Ticket> result = Right(
          Ticket(id: 'blank', title: 'empty Ticket', owner: 'Unkown Onwer'));

      Ticket ticket = result.asRight();

      emit(state.copyWith(
        status: TicketStatus.ready,
        ticket: ticket,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TicketStatus.failure,
        ticket: state.ticket,
      ));
    }
  }

  FutureOr<void> _onCommentUrlCopied(
      _TicketCommentUrlCopied event, Emitter<TicketState> emit) {
    String target =
        '${Uri.base.origin}/#/ticket/$ticketSlug/${event.commentSlug}';

    FlutterClipboard.copy(target);
  }

  FutureOr<void> _onUpdated(event, Emitter<TicketState> emit) {}
}
