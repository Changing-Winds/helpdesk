import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helpdesk/repositories/ticket_repository/models/ticket.dart';

part 'tickets_event.dart';
part 'tickets_bloc.g.dart';
part 'tickets_state.dart';
part 'tickets_bloc.freezed.dart';

class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  TicketsBloc() : super(const TicketsState()) {
    on<_TicketsFetched>(_onFetched);
  }

  FutureOr<void> _onFetched(event, Emitter<TicketsState> emit) {
    List<Ticket> tickets = [
      Ticket(
          id: "63a01e6f96dbca4970b2820a",
          owner: "b382bb30-e816-4803-b952-02c779cd1664",
          title: "minim dolore ullamco sit esse",
          description:
              "Tempor in eu laboris exercitation exercitation enim ut. Ad eiusmod dolore fugiat reprehenderit duis esse irure minim velit duis cillum esse commodo nulla. Do nulla enim sint cupidatat non irure ipsum laboris veniam est magna. Reprehenderit sit reprehenderit qui laboris.\r\n"),
      Ticket(
          id: "63a01e6fd8cfc4d5eca4f8ac",
          owner: "de5776ed-6b73-4a00-a4d0-94da9b694cf6",
          title: "ullamco anim mollit culpa cupidatat",
          description:
              "Incididunt eiusmod culpa ex esse culpa in amet minim magna officia. Labore culpa non qui laboris magna elit do elit sint eu. Sint ad laborum deserunt pariatur veniam et anim esse et nulla.\r\n"),
      Ticket(
          id: "63a01e6f7af32f5483ae704d",
          owner: "3553ec1e-81c4-45f9-80bd-db9a32925b45",
          title: "amet ex reprehenderit consequat ex",
          description:
              "Tempor adipisicing pariatur dolor voluptate elit laborum tempor adipisicing dolore sint in sint. Do mollit magna id exercitation. Ea occaecat sunt aliqua nulla laborum irure. Irure consectetur consectetur dolore nostrud ex. Dolor sunt reprehenderit ex officia.\r\n"),
      Ticket(
          id: "63a01e6fa803ad91e3fe8c6c",
          owner: "ae757042-fa93-4bf1-8388-b1a0519cc56a",
          title: "cillum esse Lorem irure esse",
          description:
              "Amet pariatur dolor consectetur ut sint adipisicing esse veniam excepteur enim laborum ex ad. Adipisicing anim veniam commodo voluptate Lorem velit eiusmod aliqua nulla sit dolor ipsum et. Dolor voluptate dolor aliquip ipsum. Id non aliqua aute ex magna consequat id. Eiusmod sint tempor eu exercitation aliquip non officia. Aliqua amet adipisicing velit voluptate pariatur velit voluptate labore quis esse excepteur laboris veniam adipisicing. Non sunt sunt nulla labore minim id est elit quis.\r\n"),
      Ticket(
          id: "63a01e6f7806fc3469214928",
          owner: "8d91061a-a87c-4046-a1b7-47afb8997ba0",
          title: "aute ipsum esse quis fugiat",
          description:
              "Commodo voluptate mollit mollit veniam magna id ad sit do. Consequat do sit ipsum incididunt et sunt ad reprehenderit elit velit. Sit reprehenderit ex eiusmod in. Voluptate do non esse enim eiusmod. Consectetur aute qui veniam nostrud velit ullamco ipsum dolor.\r\n"),
      Ticket(
          id: "63a01e6f255d71fe312c4abc",
          owner: "70fbf572-f404-457c-8521-3083bca04e96",
          title: "exercitation et eu ut minim",
          description:
              "Cillum culpa non ad in Lorem exercitation exercitation cillum et. Aliqua eu minim et dolor ea. Tempor consectetur velit ullamco incididunt ut aliqua fugiat duis. Mollit elit fugiat veniam laborum consequat ullamco mollit aliqua.\r\n"),
      Ticket(
          id: "63a01e6f143ea7456d517f82",
          owner: "f19376fa-9d38-40af-be6a-8aeb04c82927",
          title: "et occaecat dolore incididunt adipisicing",
          description:
              "Pariatur mollit magna elit dolore amet reprehenderit pariatur officia exercitation velit non duis id. Sit exercitation non irure cupidatat fugiat irure consequat consequat eu exercitation elit sunt. Velit sit eu esse exercitation. Eu eu voluptate tempor ad. Veniam id occaecat ea commodo officia aliquip ut culpa ex voluptate in velit adipisicing. Culpa ullamco eu enim ipsum laborum do irure aliquip laborum. Eiusmod non id anim irure ullamco commodo id exercitation cillum.\r\n")
    ];

    emit(state.copyWith(
      status: TicketsStatus.ready,
      tickets: tickets,
      totalItems: 7,
    ));
  }
}
