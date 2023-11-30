/* eslint-disable */
import * as _m0 from "protobufjs/minimal";
import Long = require("long");

export const protobufPackage = "";

export interface yaticker {
  id: string;
  price: number;
  time: number;
  currency: string;
  exchange: string;
  quoteType: yaticker_QuoteType;
  marketHours: yaticker_MarketHoursType;
  changePercent: number;
  dayVolume: number;
  dayHigh: number;
  dayLow: number;
  change: number;
  shortName: string;
  expireDate: number;
  openPrice: number;
  previousClose: number;
  strikePrice: number;
  underlyingSymbol: string;
  openInterest: number;
  optionsType: yaticker_OptionType;
  miniOption: number;
  lastSize: number;
  bid: number;
  bidSize: number;
  ask: number;
  askSize: number;
  priceHint: number;
  vol24hr: number;
  volAllCurrencies: number;
  fromcurrency: string;
  lastMarket: string;
  circulatingSupply: number;
  marketcap: number;
}

export enum yaticker_QuoteType {
  NONE = 0,
  ALTSYMBOL = 5,
  HEARTBEAT = 7,
  EQUITY = 8,
  INDEX = 9,
  MUTUALFUND = 11,
  MONEYMARKET = 12,
  OPTION = 13,
  CURRENCY = 14,
  WARRANT = 15,
  BOND = 17,
  FUTURE = 18,
  ETF = 20,
  COMMODITY = 23,
  ECNQUOTE = 28,
  CRYPTOCURRENCY = 41,
  INDICATOR = 42,
  INDUSTRY = 1000,
  UNRECOGNIZED = -1,
}

export function yaticker_QuoteTypeFromJSON(object: any): yaticker_QuoteType {
  switch (object) {
    case 0:
    case "NONE":
      return yaticker_QuoteType.NONE;
    case 5:
    case "ALTSYMBOL":
      return yaticker_QuoteType.ALTSYMBOL;
    case 7:
    case "HEARTBEAT":
      return yaticker_QuoteType.HEARTBEAT;
    case 8:
    case "EQUITY":
      return yaticker_QuoteType.EQUITY;
    case 9:
    case "INDEX":
      return yaticker_QuoteType.INDEX;
    case 11:
    case "MUTUALFUND":
      return yaticker_QuoteType.MUTUALFUND;
    case 12:
    case "MONEYMARKET":
      return yaticker_QuoteType.MONEYMARKET;
    case 13:
    case "OPTION":
      return yaticker_QuoteType.OPTION;
    case 14:
    case "CURRENCY":
      return yaticker_QuoteType.CURRENCY;
    case 15:
    case "WARRANT":
      return yaticker_QuoteType.WARRANT;
    case 17:
    case "BOND":
      return yaticker_QuoteType.BOND;
    case 18:
    case "FUTURE":
      return yaticker_QuoteType.FUTURE;
    case 20:
    case "ETF":
      return yaticker_QuoteType.ETF;
    case 23:
    case "COMMODITY":
      return yaticker_QuoteType.COMMODITY;
    case 28:
    case "ECNQUOTE":
      return yaticker_QuoteType.ECNQUOTE;
    case 41:
    case "CRYPTOCURRENCY":
      return yaticker_QuoteType.CRYPTOCURRENCY;
    case 42:
    case "INDICATOR":
      return yaticker_QuoteType.INDICATOR;
    case 1000:
    case "INDUSTRY":
      return yaticker_QuoteType.INDUSTRY;
    case -1:
    case "UNRECOGNIZED":
    default:
      return yaticker_QuoteType.UNRECOGNIZED;
  }
}

export function yaticker_QuoteTypeToJSON(object: yaticker_QuoteType): string {
  switch (object) {
    case yaticker_QuoteType.NONE:
      return "NONE";
    case yaticker_QuoteType.ALTSYMBOL:
      return "ALTSYMBOL";
    case yaticker_QuoteType.HEARTBEAT:
      return "HEARTBEAT";
    case yaticker_QuoteType.EQUITY:
      return "EQUITY";
    case yaticker_QuoteType.INDEX:
      return "INDEX";
    case yaticker_QuoteType.MUTUALFUND:
      return "MUTUALFUND";
    case yaticker_QuoteType.MONEYMARKET:
      return "MONEYMARKET";
    case yaticker_QuoteType.OPTION:
      return "OPTION";
    case yaticker_QuoteType.CURRENCY:
      return "CURRENCY";
    case yaticker_QuoteType.WARRANT:
      return "WARRANT";
    case yaticker_QuoteType.BOND:
      return "BOND";
    case yaticker_QuoteType.FUTURE:
      return "FUTURE";
    case yaticker_QuoteType.ETF:
      return "ETF";
    case yaticker_QuoteType.COMMODITY:
      return "COMMODITY";
    case yaticker_QuoteType.ECNQUOTE:
      return "ECNQUOTE";
    case yaticker_QuoteType.CRYPTOCURRENCY:
      return "CRYPTOCURRENCY";
    case yaticker_QuoteType.INDICATOR:
      return "INDICATOR";
    case yaticker_QuoteType.INDUSTRY:
      return "INDUSTRY";
    case yaticker_QuoteType.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

export enum yaticker_OptionType {
  CALL = 0,
  PUT = 1,
  UNRECOGNIZED = -1,
}

export function yaticker_OptionTypeFromJSON(object: any): yaticker_OptionType {
  switch (object) {
    case 0:
    case "CALL":
      return yaticker_OptionType.CALL;
    case 1:
    case "PUT":
      return yaticker_OptionType.PUT;
    case -1:
    case "UNRECOGNIZED":
    default:
      return yaticker_OptionType.UNRECOGNIZED;
  }
}

export function yaticker_OptionTypeToJSON(object: yaticker_OptionType): string {
  switch (object) {
    case yaticker_OptionType.CALL:
      return "CALL";
    case yaticker_OptionType.PUT:
      return "PUT";
    case yaticker_OptionType.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

export enum yaticker_MarketHoursType {
  PRE_MARKET = 0,
  REGULAR_MARKET = 1,
  POST_MARKET = 2,
  EXTENDED_HOURS_MARKET = 3,
  UNRECOGNIZED = -1,
}

export function yaticker_MarketHoursTypeFromJSON(object: any): yaticker_MarketHoursType {
  switch (object) {
    case 0:
    case "PRE_MARKET":
      return yaticker_MarketHoursType.PRE_MARKET;
    case 1:
    case "REGULAR_MARKET":
      return yaticker_MarketHoursType.REGULAR_MARKET;
    case 2:
    case "POST_MARKET":
      return yaticker_MarketHoursType.POST_MARKET;
    case 3:
    case "EXTENDED_HOURS_MARKET":
      return yaticker_MarketHoursType.EXTENDED_HOURS_MARKET;
    case -1:
    case "UNRECOGNIZED":
    default:
      return yaticker_MarketHoursType.UNRECOGNIZED;
  }
}

export function yaticker_MarketHoursTypeToJSON(object: yaticker_MarketHoursType): string {
  switch (object) {
    case yaticker_MarketHoursType.PRE_MARKET:
      return "PRE_MARKET";
    case yaticker_MarketHoursType.REGULAR_MARKET:
      return "REGULAR_MARKET";
    case yaticker_MarketHoursType.POST_MARKET:
      return "POST_MARKET";
    case yaticker_MarketHoursType.EXTENDED_HOURS_MARKET:
      return "EXTENDED_HOURS_MARKET";
    case yaticker_MarketHoursType.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

function createBaseyaticker(): yaticker {
  return {
    id: "",
    price: 0,
    time: 0,
    currency: "",
    exchange: "",
    quoteType: 0,
    marketHours: 0,
    changePercent: 0,
    dayVolume: 0,
    dayHigh: 0,
    dayLow: 0,
    change: 0,
    shortName: "",
    expireDate: 0,
    openPrice: 0,
    previousClose: 0,
    strikePrice: 0,
    underlyingSymbol: "",
    openInterest: 0,
    optionsType: 0,
    miniOption: 0,
    lastSize: 0,
    bid: 0,
    bidSize: 0,
    ask: 0,
    askSize: 0,
    priceHint: 0,
    vol24hr: 0,
    volAllCurrencies: 0,
    fromcurrency: "",
    lastMarket: "",
    circulatingSupply: 0,
    marketcap: 0,
  };
}

export const yaticker = {
  encode(message: yaticker, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.price !== 0) {
      writer.uint32(21).float(message.price);
    }
    if (message.time !== 0) {
      writer.uint32(24).sint64(message.time);
    }
    if (message.currency !== "") {
      writer.uint32(34).string(message.currency);
    }
    if (message.exchange !== "") {
      writer.uint32(42).string(message.exchange);
    }
    if (message.quoteType !== 0) {
      writer.uint32(48).int32(message.quoteType);
    }
    if (message.marketHours !== 0) {
      writer.uint32(56).int32(message.marketHours);
    }
    if (message.changePercent !== 0) {
      writer.uint32(69).float(message.changePercent);
    }
    if (message.dayVolume !== 0) {
      writer.uint32(72).sint64(message.dayVolume);
    }
    if (message.dayHigh !== 0) {
      writer.uint32(85).float(message.dayHigh);
    }
    if (message.dayLow !== 0) {
      writer.uint32(93).float(message.dayLow);
    }
    if (message.change !== 0) {
      writer.uint32(101).float(message.change);
    }
    if (message.shortName !== "") {
      writer.uint32(106).string(message.shortName);
    }
    if (message.expireDate !== 0) {
      writer.uint32(112).sint64(message.expireDate);
    }
    if (message.openPrice !== 0) {
      writer.uint32(125).float(message.openPrice);
    }
    if (message.previousClose !== 0) {
      writer.uint32(133).float(message.previousClose);
    }
    if (message.strikePrice !== 0) {
      writer.uint32(141).float(message.strikePrice);
    }
    if (message.underlyingSymbol !== "") {
      writer.uint32(146).string(message.underlyingSymbol);
    }
    if (message.openInterest !== 0) {
      writer.uint32(152).sint64(message.openInterest);
    }
    if (message.optionsType !== 0) {
      writer.uint32(160).int32(message.optionsType);
    }
    if (message.miniOption !== 0) {
      writer.uint32(168).sint64(message.miniOption);
    }
    if (message.lastSize !== 0) {
      writer.uint32(176).sint64(message.lastSize);
    }
    if (message.bid !== 0) {
      writer.uint32(189).float(message.bid);
    }
    if (message.bidSize !== 0) {
      writer.uint32(192).sint64(message.bidSize);
    }
    if (message.ask !== 0) {
      writer.uint32(205).float(message.ask);
    }
    if (message.askSize !== 0) {
      writer.uint32(208).sint64(message.askSize);
    }
    if (message.priceHint !== 0) {
      writer.uint32(216).sint64(message.priceHint);
    }
    if (message.vol24hr !== 0) {
      writer.uint32(224).sint64(message.vol24hr);
    }
    if (message.volAllCurrencies !== 0) {
      writer.uint32(232).sint64(message.volAllCurrencies);
    }
    if (message.fromcurrency !== "") {
      writer.uint32(242).string(message.fromcurrency);
    }
    if (message.lastMarket !== "") {
      writer.uint32(250).string(message.lastMarket);
    }
    if (message.circulatingSupply !== 0) {
      writer.uint32(257).double(message.circulatingSupply);
    }
    if (message.marketcap !== 0) {
      writer.uint32(265).double(message.marketcap);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): yaticker {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseyaticker();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.id = reader.string();
          continue;
        case 2:
          if (tag !== 21) {
            break;
          }

          message.price = reader.float();
          continue;
        case 3:
          if (tag !== 24) {
            break;
          }

          message.time = longToNumber(reader.sint64() as Long);
          continue;
        case 4:
          if (tag !== 34) {
            break;
          }

          message.currency = reader.string();
          continue;
        case 5:
          if (tag !== 42) {
            break;
          }

          message.exchange = reader.string();
          continue;
        case 6:
          if (tag !== 48) {
            break;
          }

          message.quoteType = reader.int32() as any;
          continue;
        case 7:
          if (tag !== 56) {
            break;
          }

          message.marketHours = reader.int32() as any;
          continue;
        case 8:
          if (tag !== 69) {
            break;
          }

          message.changePercent = reader.float();
          continue;
        case 9:
          if (tag !== 72) {
            break;
          }

          message.dayVolume = longToNumber(reader.sint64() as Long);
          continue;
        case 10:
          if (tag !== 85) {
            break;
          }

          message.dayHigh = reader.float();
          continue;
        case 11:
          if (tag !== 93) {
            break;
          }

          message.dayLow = reader.float();
          continue;
        case 12:
          if (tag !== 101) {
            break;
          }

          message.change = reader.float();
          continue;
        case 13:
          if (tag !== 106) {
            break;
          }

          message.shortName = reader.string();
          continue;
        case 14:
          if (tag !== 112) {
            break;
          }

          message.expireDate = longToNumber(reader.sint64() as Long);
          continue;
        case 15:
          if (tag !== 125) {
            break;
          }

          message.openPrice = reader.float();
          continue;
        case 16:
          if (tag !== 133) {
            break;
          }

          message.previousClose = reader.float();
          continue;
        case 17:
          if (tag !== 141) {
            break;
          }

          message.strikePrice = reader.float();
          continue;
        case 18:
          if (tag !== 146) {
            break;
          }

          message.underlyingSymbol = reader.string();
          continue;
        case 19:
          if (tag !== 152) {
            break;
          }

          message.openInterest = longToNumber(reader.sint64() as Long);
          continue;
        case 20:
          if (tag !== 160) {
            break;
          }

          message.optionsType = reader.int32() as any;
          continue;
        case 21:
          if (tag !== 168) {
            break;
          }

          message.miniOption = longToNumber(reader.sint64() as Long);
          continue;
        case 22:
          if (tag !== 176) {
            break;
          }

          message.lastSize = longToNumber(reader.sint64() as Long);
          continue;
        case 23:
          if (tag !== 189) {
            break;
          }

          message.bid = reader.float();
          continue;
        case 24:
          if (tag !== 192) {
            break;
          }

          message.bidSize = longToNumber(reader.sint64() as Long);
          continue;
        case 25:
          if (tag !== 205) {
            break;
          }

          message.ask = reader.float();
          continue;
        case 26:
          if (tag !== 208) {
            break;
          }

          message.askSize = longToNumber(reader.sint64() as Long);
          continue;
        case 27:
          if (tag !== 216) {
            break;
          }

          message.priceHint = longToNumber(reader.sint64() as Long);
          continue;
        case 28:
          if (tag !== 224) {
            break;
          }

          message.vol24hr = longToNumber(reader.sint64() as Long);
          continue;
        case 29:
          if (tag !== 232) {
            break;
          }

          message.volAllCurrencies = longToNumber(reader.sint64() as Long);
          continue;
        case 30:
          if (tag !== 242) {
            break;
          }

          message.fromcurrency = reader.string();
          continue;
        case 31:
          if (tag !== 250) {
            break;
          }

          message.lastMarket = reader.string();
          continue;
        case 32:
          if (tag !== 257) {
            break;
          }

          message.circulatingSupply = reader.double();
          continue;
        case 33:
          if (tag !== 265) {
            break;
          }

          message.marketcap = reader.double();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): yaticker {
    return {
      id: isSet(object.id) ? globalThis.String(object.id) : "",
      price: isSet(object.price) ? globalThis.Number(object.price) : 0,
      time: isSet(object.time) ? globalThis.Number(object.time) : 0,
      currency: isSet(object.currency) ? globalThis.String(object.currency) : "",
      exchange: isSet(object.exchange) ? globalThis.String(object.exchange) : "",
      quoteType: isSet(object.quoteType) ? yaticker_QuoteTypeFromJSON(object.quoteType) : 0,
      marketHours: isSet(object.marketHours) ? yaticker_MarketHoursTypeFromJSON(object.marketHours) : 0,
      changePercent: isSet(object.changePercent) ? globalThis.Number(object.changePercent) : 0,
      dayVolume: isSet(object.dayVolume) ? globalThis.Number(object.dayVolume) : 0,
      dayHigh: isSet(object.dayHigh) ? globalThis.Number(object.dayHigh) : 0,
      dayLow: isSet(object.dayLow) ? globalThis.Number(object.dayLow) : 0,
      change: isSet(object.change) ? globalThis.Number(object.change) : 0,
      shortName: isSet(object.shortName) ? globalThis.String(object.shortName) : "",
      expireDate: isSet(object.expireDate) ? globalThis.Number(object.expireDate) : 0,
      openPrice: isSet(object.openPrice) ? globalThis.Number(object.openPrice) : 0,
      previousClose: isSet(object.previousClose) ? globalThis.Number(object.previousClose) : 0,
      strikePrice: isSet(object.strikePrice) ? globalThis.Number(object.strikePrice) : 0,
      underlyingSymbol: isSet(object.underlyingSymbol) ? globalThis.String(object.underlyingSymbol) : "",
      openInterest: isSet(object.openInterest) ? globalThis.Number(object.openInterest) : 0,
      optionsType: isSet(object.optionsType) ? yaticker_OptionTypeFromJSON(object.optionsType) : 0,
      miniOption: isSet(object.miniOption) ? globalThis.Number(object.miniOption) : 0,
      lastSize: isSet(object.lastSize) ? globalThis.Number(object.lastSize) : 0,
      bid: isSet(object.bid) ? globalThis.Number(object.bid) : 0,
      bidSize: isSet(object.bidSize) ? globalThis.Number(object.bidSize) : 0,
      ask: isSet(object.ask) ? globalThis.Number(object.ask) : 0,
      askSize: isSet(object.askSize) ? globalThis.Number(object.askSize) : 0,
      priceHint: isSet(object.priceHint) ? globalThis.Number(object.priceHint) : 0,
      vol24hr: isSet(object.vol24hr) ? globalThis.Number(object.vol24hr) : 0,
      volAllCurrencies: isSet(object.volAllCurrencies) ? globalThis.Number(object.volAllCurrencies) : 0,
      fromcurrency: isSet(object.fromcurrency) ? globalThis.String(object.fromcurrency) : "",
      lastMarket: isSet(object.lastMarket) ? globalThis.String(object.lastMarket) : "",
      circulatingSupply: isSet(object.circulatingSupply) ? globalThis.Number(object.circulatingSupply) : 0,
      marketcap: isSet(object.marketcap) ? globalThis.Number(object.marketcap) : 0,
    };
  },

  toJSON(message: yaticker): unknown {
    const obj: any = {};
    if (message.id !== "") {
      obj.id = message.id;
    }
    if (message.price !== 0) {
      obj.price = message.price;
    }
    if (message.time !== 0) {
      obj.time = Math.round(message.time);
    }
    if (message.currency !== "") {
      obj.currency = message.currency;
    }
    if (message.exchange !== "") {
      obj.exchange = message.exchange;
    }
    if (message.quoteType !== 0) {
      obj.quoteType = yaticker_QuoteTypeToJSON(message.quoteType);
    }
    if (message.marketHours !== 0) {
      obj.marketHours = yaticker_MarketHoursTypeToJSON(message.marketHours);
    }
    if (message.changePercent !== 0) {
      obj.changePercent = message.changePercent;
    }
    if (message.dayVolume !== 0) {
      obj.dayVolume = Math.round(message.dayVolume);
    }
    if (message.dayHigh !== 0) {
      obj.dayHigh = message.dayHigh;
    }
    if (message.dayLow !== 0) {
      obj.dayLow = message.dayLow;
    }
    if (message.change !== 0) {
      obj.change = message.change;
    }
    if (message.shortName !== "") {
      obj.shortName = message.shortName;
    }
    if (message.expireDate !== 0) {
      obj.expireDate = Math.round(message.expireDate);
    }
    if (message.openPrice !== 0) {
      obj.openPrice = message.openPrice;
    }
    if (message.previousClose !== 0) {
      obj.previousClose = message.previousClose;
    }
    if (message.strikePrice !== 0) {
      obj.strikePrice = message.strikePrice;
    }
    if (message.underlyingSymbol !== "") {
      obj.underlyingSymbol = message.underlyingSymbol;
    }
    if (message.openInterest !== 0) {
      obj.openInterest = Math.round(message.openInterest);
    }
    if (message.optionsType !== 0) {
      obj.optionsType = yaticker_OptionTypeToJSON(message.optionsType);
    }
    if (message.miniOption !== 0) {
      obj.miniOption = Math.round(message.miniOption);
    }
    if (message.lastSize !== 0) {
      obj.lastSize = Math.round(message.lastSize);
    }
    if (message.bid !== 0) {
      obj.bid = message.bid;
    }
    if (message.bidSize !== 0) {
      obj.bidSize = Math.round(message.bidSize);
    }
    if (message.ask !== 0) {
      obj.ask = message.ask;
    }
    if (message.askSize !== 0) {
      obj.askSize = Math.round(message.askSize);
    }
    if (message.priceHint !== 0) {
      obj.priceHint = Math.round(message.priceHint);
    }
    if (message.vol24hr !== 0) {
      obj.vol24hr = Math.round(message.vol24hr);
    }
    if (message.volAllCurrencies !== 0) {
      obj.volAllCurrencies = Math.round(message.volAllCurrencies);
    }
    if (message.fromcurrency !== "") {
      obj.fromcurrency = message.fromcurrency;
    }
    if (message.lastMarket !== "") {
      obj.lastMarket = message.lastMarket;
    }
    if (message.circulatingSupply !== 0) {
      obj.circulatingSupply = message.circulatingSupply;
    }
    if (message.marketcap !== 0) {
      obj.marketcap = message.marketcap;
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<yaticker>, I>>(base?: I): yaticker {
    return yaticker.fromPartial(base ?? ({} as any));
  },
  fromPartial<I extends Exact<DeepPartial<yaticker>, I>>(object: I): yaticker {
    const message = createBaseyaticker();
    message.id = object.id ?? "";
    message.price = object.price ?? 0;
    message.time = object.time ?? 0;
    message.currency = object.currency ?? "";
    message.exchange = object.exchange ?? "";
    message.quoteType = object.quoteType ?? 0;
    message.marketHours = object.marketHours ?? 0;
    message.changePercent = object.changePercent ?? 0;
    message.dayVolume = object.dayVolume ?? 0;
    message.dayHigh = object.dayHigh ?? 0;
    message.dayLow = object.dayLow ?? 0;
    message.change = object.change ?? 0;
    message.shortName = object.shortName ?? "";
    message.expireDate = object.expireDate ?? 0;
    message.openPrice = object.openPrice ?? 0;
    message.previousClose = object.previousClose ?? 0;
    message.strikePrice = object.strikePrice ?? 0;
    message.underlyingSymbol = object.underlyingSymbol ?? "";
    message.openInterest = object.openInterest ?? 0;
    message.optionsType = object.optionsType ?? 0;
    message.miniOption = object.miniOption ?? 0;
    message.lastSize = object.lastSize ?? 0;
    message.bid = object.bid ?? 0;
    message.bidSize = object.bidSize ?? 0;
    message.ask = object.ask ?? 0;
    message.askSize = object.askSize ?? 0;
    message.priceHint = object.priceHint ?? 0;
    message.vol24hr = object.vol24hr ?? 0;
    message.volAllCurrencies = object.volAllCurrencies ?? 0;
    message.fromcurrency = object.fromcurrency ?? "";
    message.lastMarket = object.lastMarket ?? "";
    message.circulatingSupply = object.circulatingSupply ?? 0;
    message.marketcap = object.marketcap ?? 0;
    return message;
  },
};

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

export type DeepPartial<T> = T extends Builtin ? T
  : T extends globalThis.Array<infer U> ? globalThis.Array<DeepPartial<U>>
  : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

type KeysOfUnion<T> = T extends T ? keyof T : never;
export type Exact<P, I extends P> = P extends Builtin ? P
  : P & { [K in keyof P]: Exact<P[K], I[K]> } & { [K in Exclude<keyof I, KeysOfUnion<P>>]: never };

function longToNumber(long: Long): number {
  if (long.gt(globalThis.Number.MAX_SAFE_INTEGER)) {
    throw new globalThis.Error("Value is larger than Number.MAX_SAFE_INTEGER");
  }
  return long.toNumber();
}

if (_m0.util.Long !== Long) {
  _m0.util.Long = Long as any;
  _m0.configure();
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
