// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Issue _$$_IssueFromJson(Map<String, dynamic> json) => _$_Issue(
      authorID: json['authorID'] as String,
      title: json['title'] as String,
      abstract: json['abstract'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      criticity: $enumDecodeNullable(_$CriticityEnumMap, json['criticity']) ??
          Criticity.minor,
      product: $enumDecodeNullable(_$ProductEnumMap, json['product']) ??
          Product.flatguide,
      application:
          $enumDecodeNullable(_$ApplicationEnumMap, json['application']) ??
              Application.adminApp,
      device: $enumDecodeNullable(_$DeviceEnumMap, json['device']) ??
          Device.windowsDekstop,
    );

Map<String, dynamic> _$$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'authorID': instance.authorID,
      'title': instance.title,
      'abstract': instance.abstract,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'criticity': _$CriticityEnumMap[instance.criticity]!,
      'product': _$ProductEnumMap[instance.product]!,
      'application': _$ApplicationEnumMap[instance.application]!,
      'device': _$DeviceEnumMap[instance.device]!,
    };

const _$CriticityEnumMap = {
  Criticity.minor: 'minor',
  Criticity.medium: 'medium',
  Criticity.major: 'major',
  Criticity.critical: 'critical',
};

const _$ProductEnumMap = {
  Product.flatguide: 'flatguide',
  Product.saas: 'saas',
  Product.all: 'all',
};

const _$ApplicationEnumMap = {
  Application.adminApp: 'adminApp',
  Application.adminSaas: 'adminSaas',
  Application.agencyApp: 'agencyApp',
  Application.agencySaaS: 'agencySaaS',
  Application.applicantApp: 'applicantApp',
  Application.applicantAppSaaS: 'applicantAppSaaS',
  Application.calendly: 'calendly',
  Application.concordNow: 'concordNow',
  Application.email: 'email',
  Application.flatGuideApp: 'flatGuideApp',
  Application.flatGuideProspectionForm: 'flatGuideProspectionForm',
  Application.flatGuideWebApp: 'flatGuideWebApp',
  Application.googleDrive: 'googleDrive',
  Application.hubSpot: 'hubSpot',
  Application.intercom: 'intercom',
  Application.metabase: 'metabase',
  Application.qonto: 'qonto',
  Application.stripe: 'stripe',
  Application.system: 'system',
  Application.upflow: 'upflow',
  Application.website: 'website',
};

const _$DeviceEnumMap = {
  Device.windowsDekstop: 'windowsDekstop',
  Device.macOSDekstop: 'macOSDekstop',
  Device.linuxDekstop: 'linuxDekstop',
  Device.iOSMobile: 'iOSMobile',
  Device.iOSTablet: 'iOSTablet',
  Device.androidMobile: 'androidMobile',
  Device.androidTablet: 'androidTablet',
};
