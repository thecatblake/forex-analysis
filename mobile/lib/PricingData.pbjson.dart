//
//  Generated code. Do not modify.
//  source: PricingData.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use yatickerDescriptor instead')
const yaticker$json = {
  '1': 'yaticker',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'price', '3': 2, '4': 1, '5': 2, '10': 'price'},
    {'1': 'time', '3': 3, '4': 1, '5': 5, '10': 'time'},
    {'1': 'currency', '3': 4, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'exchange', '3': 5, '4': 1, '5': 9, '10': 'exchange'},
    {'1': 'quoteType', '3': 6, '4': 1, '5': 14, '6': '.yaticker.QuoteType', '10': 'quoteType'},
    {'1': 'marketHours', '3': 7, '4': 1, '5': 14, '6': '.yaticker.MarketHoursType', '10': 'marketHours'},
    {'1': 'changePercent', '3': 8, '4': 1, '5': 2, '10': 'changePercent'},
    {'1': 'dayVolume', '3': 9, '4': 1, '5': 18, '10': 'dayVolume'},
    {'1': 'dayHigh', '3': 10, '4': 1, '5': 2, '10': 'dayHigh'},
    {'1': 'dayLow', '3': 11, '4': 1, '5': 2, '10': 'dayLow'},
    {'1': 'change', '3': 12, '4': 1, '5': 2, '10': 'change'},
    {'1': 'shortName', '3': 13, '4': 1, '5': 9, '10': 'shortName'},
    {'1': 'expireDate', '3': 14, '4': 1, '5': 18, '10': 'expireDate'},
    {'1': 'openPrice', '3': 15, '4': 1, '5': 2, '10': 'openPrice'},
    {'1': 'previousClose', '3': 16, '4': 1, '5': 2, '10': 'previousClose'},
    {'1': 'strikePrice', '3': 17, '4': 1, '5': 2, '10': 'strikePrice'},
    {'1': 'underlyingSymbol', '3': 18, '4': 1, '5': 9, '10': 'underlyingSymbol'},
    {'1': 'openInterest', '3': 19, '4': 1, '5': 18, '10': 'openInterest'},
    {'1': 'optionsType', '3': 20, '4': 1, '5': 14, '6': '.yaticker.OptionType', '10': 'optionsType'},
    {'1': 'miniOption', '3': 21, '4': 1, '5': 18, '10': 'miniOption'},
    {'1': 'lastSize', '3': 22, '4': 1, '5': 18, '10': 'lastSize'},
    {'1': 'bid', '3': 23, '4': 1, '5': 2, '10': 'bid'},
    {'1': 'bidSize', '3': 24, '4': 1, '5': 18, '10': 'bidSize'},
    {'1': 'ask', '3': 25, '4': 1, '5': 2, '10': 'ask'},
    {'1': 'askSize', '3': 26, '4': 1, '5': 18, '10': 'askSize'},
    {'1': 'priceHint', '3': 27, '4': 1, '5': 18, '10': 'priceHint'},
    {'1': 'vol_24hr', '3': 28, '4': 1, '5': 5, '10': 'vol24hr'},
    {'1': 'volAllCurrencies', '3': 29, '4': 1, '5': 18, '10': 'volAllCurrencies'},
    {'1': 'fromcurrency', '3': 30, '4': 1, '5': 9, '10': 'fromcurrency'},
    {'1': 'lastMarket', '3': 31, '4': 1, '5': 9, '10': 'lastMarket'},
    {'1': 'circulatingSupply', '3': 32, '4': 1, '5': 1, '10': 'circulatingSupply'},
    {'1': 'marketcap', '3': 33, '4': 1, '5': 1, '10': 'marketcap'},
  ],
  '4': [yaticker_QuoteType$json, yaticker_OptionType$json, yaticker_MarketHoursType$json],
};

@$core.Deprecated('Use yatickerDescriptor instead')
const yaticker_QuoteType$json = {
  '1': 'QuoteType',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'ALTSYMBOL', '2': 5},
    {'1': 'HEARTBEAT', '2': 7},
    {'1': 'EQUITY', '2': 8},
    {'1': 'INDEX', '2': 9},
    {'1': 'MUTUALFUND', '2': 11},
    {'1': 'MONEYMARKET', '2': 12},
    {'1': 'OPTION', '2': 13},
    {'1': 'CURRENCY', '2': 14},
    {'1': 'WARRANT', '2': 15},
    {'1': 'BOND', '2': 17},
    {'1': 'FUTURE', '2': 18},
    {'1': 'ETF', '2': 20},
    {'1': 'COMMODITY', '2': 23},
    {'1': 'ECNQUOTE', '2': 28},
    {'1': 'CRYPTOCURRENCY', '2': 41},
    {'1': 'INDICATOR', '2': 42},
    {'1': 'INDUSTRY', '2': 1000},
  ],
};

@$core.Deprecated('Use yatickerDescriptor instead')
const yaticker_OptionType$json = {
  '1': 'OptionType',
  '2': [
    {'1': 'CALL', '2': 0},
    {'1': 'PUT', '2': 1},
  ],
};

@$core.Deprecated('Use yatickerDescriptor instead')
const yaticker_MarketHoursType$json = {
  '1': 'MarketHoursType',
  '2': [
    {'1': 'PRE_MARKET', '2': 0},
    {'1': 'REGULAR_MARKET', '2': 1},
    {'1': 'POST_MARKET', '2': 2},
    {'1': 'EXTENDED_HOURS_MARKET', '2': 3},
  ],
};

/// Descriptor for `yaticker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yatickerDescriptor = $convert.base64Decode(
    'Cgh5YXRpY2tlchIOCgJpZBgBIAEoCVICaWQSFAoFcHJpY2UYAiABKAJSBXByaWNlEhIKBHRpbW'
    'UYAyABKAVSBHRpbWUSGgoIY3VycmVuY3kYBCABKAlSCGN1cnJlbmN5EhoKCGV4Y2hhbmdlGAUg'
    'ASgJUghleGNoYW5nZRIxCglxdW90ZVR5cGUYBiABKA4yEy55YXRpY2tlci5RdW90ZVR5cGVSCX'
    'F1b3RlVHlwZRI7CgttYXJrZXRIb3VycxgHIAEoDjIZLnlhdGlja2VyLk1hcmtldEhvdXJzVHlw'
    'ZVILbWFya2V0SG91cnMSJAoNY2hhbmdlUGVyY2VudBgIIAEoAlINY2hhbmdlUGVyY2VudBIcCg'
    'lkYXlWb2x1bWUYCSABKBJSCWRheVZvbHVtZRIYCgdkYXlIaWdoGAogASgCUgdkYXlIaWdoEhYK'
    'BmRheUxvdxgLIAEoAlIGZGF5TG93EhYKBmNoYW5nZRgMIAEoAlIGY2hhbmdlEhwKCXNob3J0Tm'
    'FtZRgNIAEoCVIJc2hvcnROYW1lEh4KCmV4cGlyZURhdGUYDiABKBJSCmV4cGlyZURhdGUSHAoJ'
    'b3BlblByaWNlGA8gASgCUglvcGVuUHJpY2USJAoNcHJldmlvdXNDbG9zZRgQIAEoAlINcHJldm'
    'lvdXNDbG9zZRIgCgtzdHJpa2VQcmljZRgRIAEoAlILc3RyaWtlUHJpY2USKgoQdW5kZXJseWlu'
    'Z1N5bWJvbBgSIAEoCVIQdW5kZXJseWluZ1N5bWJvbBIiCgxvcGVuSW50ZXJlc3QYEyABKBJSDG'
    '9wZW5JbnRlcmVzdBI2CgtvcHRpb25zVHlwZRgUIAEoDjIULnlhdGlja2VyLk9wdGlvblR5cGVS'
    'C29wdGlvbnNUeXBlEh4KCm1pbmlPcHRpb24YFSABKBJSCm1pbmlPcHRpb24SGgoIbGFzdFNpem'
    'UYFiABKBJSCGxhc3RTaXplEhAKA2JpZBgXIAEoAlIDYmlkEhgKB2JpZFNpemUYGCABKBJSB2Jp'
    'ZFNpemUSEAoDYXNrGBkgASgCUgNhc2sSGAoHYXNrU2l6ZRgaIAEoElIHYXNrU2l6ZRIcCglwcm'
    'ljZUhpbnQYGyABKBJSCXByaWNlSGludBIZCgh2b2xfMjRochgcIAEoBVIHdm9sMjRochIqChB2'
    'b2xBbGxDdXJyZW5jaWVzGB0gASgSUhB2b2xBbGxDdXJyZW5jaWVzEiIKDGZyb21jdXJyZW5jeR'
    'geIAEoCVIMZnJvbWN1cnJlbmN5Eh4KCmxhc3RNYXJrZXQYHyABKAlSCmxhc3RNYXJrZXQSLAoR'
    'Y2lyY3VsYXRpbmdTdXBwbHkYICABKAFSEWNpcmN1bGF0aW5nU3VwcGx5EhwKCW1hcmtldGNhcB'
    'ghIAEoAVIJbWFya2V0Y2FwIoACCglRdW90ZVR5cGUSCAoETk9ORRAAEg0KCUFMVFNZTUJPTBAF'
    'Eg0KCUhFQVJUQkVBVBAHEgoKBkVRVUlUWRAIEgkKBUlOREVYEAkSDgoKTVVUVUFMRlVORBALEg'
    '8KC01PTkVZTUFSS0VUEAwSCgoGT1BUSU9OEA0SDAoIQ1VSUkVOQ1kQDhILCgdXQVJSQU5UEA8S'
    'CAoEQk9ORBAREgoKBkZVVFVSRRASEgcKA0VURhAUEg0KCUNPTU1PRElUWRAXEgwKCEVDTlFVT1'
    'RFEBwSEgoOQ1JZUFRPQ1VSUkVOQ1kQKRINCglJTkRJQ0FUT1IQKhINCghJTkRVU1RSWRDoByIf'
    'CgpPcHRpb25UeXBlEggKBENBTEwQABIHCgNQVVQQASJhCg9NYXJrZXRIb3Vyc1R5cGUSDgoKUF'
    'JFX01BUktFVBAAEhIKDlJFR1VMQVJfTUFSS0VUEAESDwoLUE9TVF9NQVJLRVQQAhIZChVFWFRF'
    'TkRFRF9IT1VSU19NQVJLRVQQAw==');

