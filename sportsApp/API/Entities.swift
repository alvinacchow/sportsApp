//
//  Entities.swift
//  sportsApp
//
//  Created by Alvina Chow on 2/3/24.
//

import Foundation

public enum Country: String, Decodable {
  case ae, ar, at, au, be, bg, br, ca, ch, cn, co, cu, cz, de, eg, es, fr, gb, gr, hk, hu, id, ie, il, `in`, `is`, it, jp, kr, lt, lv, ma, mx, my, ng, nl, no, nz, ph, pk, pl, pt, ro, rs, ru, sa, se, sg, si, sk, th, tr, tw, ua, us, ve, za, zh
}

public enum ErrorCode: String, Decodable, Error {
  case apiKeyDisabled,
  apiKeyExhausted,
  apiKeyInvalid,
  apiKeyMissing,
  parameterInvalid,
  parametersMissing,
  rateLimited,
  sourcesTooMany,
  sourceDoesNotExist,
  unexpectedError,

  invalidURL,
  decodingError
}

public struct ErrorResponse: Decodable, Error {
  public let code: ErrorCode
  public let message: String
}

extension ErrorResponse {
  static let invalidURL: ErrorResponse = .init(
    code: .invalidURL,
    message: "couldn't create url, please check again"
  )
}

public enum Language: String, Decodable {
  case ar, de, en, es, fr, he, it, nl, no, pt, ru, se, ud, zh
}


public struct NewsArticle: Decodable {
  public let source: NewsSource
  public let author: String?
  public let title: String?
  public let description: String?
  public let url: URL?
  public let urlToImage: URL?
  public let content: String?
}

extension NewsArticle: Identifiable {
  public var id: String { title ?? "" }
}

extension NewsArticle: Equatable {
  public static func == (lhs: NewsArticle, rhs: NewsArticle) -> Bool {
    lhs.title == rhs.title
    && lhs.author == rhs.author
    && lhs.description == rhs.description
    && lhs.url == rhs.url
    && lhs.urlToImage == rhs.urlToImage
    && lhs.content == rhs.content
  }
}

#if DEBUG
extension NewsArticle {
  public static let demo = NewsArticle(
    source: .init(
      id: "the-verge",
      name: "The Verge",
      description: nil, url: nil, category: nil, language: nil, country: nil
    ),
    author: "Richard Lawler",
    title: "Kaseya ransomware attackers demand $70 million, claim they infected over a million devices",
    description: "Three days after ransomware attackers hijacked a managed services platform, recovery efforts continued. The REvil group is reportedly asking for as much as $70 million in Bitcoin to unlock the more than 1 million devices infected.",
    url: URL(string: "https://www.theverge.com/2021/7/5/22564054/ransomware-revil-kaseya-coop"),
    urlToImage: URL(string: "https://cdn.vox-cdn.com/thumbor/nk-drxT0WYuHTTAQw6MhPgi4LK8=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/8792137/acastro_170629_1777_0008_v2.jpg"),
    content: "Filed under:\r\nThe supply chain attack has reached over a thousand organizations.\r\nIllustration by Alex Castro / The Verge\r\nThree days after ransomware attackers started the holiday weekend by comprom… [+3376 chars]"
  )
}
#endif

public struct NewsSource: Decodable, Identifiable {
  public let id: String?
  public let name: String
  public let description: String?
  public let url: URL?
  public let category: NewsSourceCategory?
  public let language: Language?
  public let country: Country?
}

extension NewsSource: Equatable {
  public static func == (lhs: NewsSource, rhs: NewsSource) -> Bool {
    lhs.id == rhs.id
    && lhs.name == rhs.name
    && lhs.description == rhs.description
    && lhs.url == rhs.url
    && lhs.category == rhs.category
    && lhs.language == rhs.language
    && lhs.country == rhs.country
  }
}

public enum NewsSourceCategory: String, Decodable {
  case business, entertainment, general, health, science, sports, technology
}


#if DEBUG
extension NewsSource {
  public static let demo = NewsSource(
    id: "abc-news",
    name: "ABC News",
    description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
    url: URL(string: "https://abcnews.go.com"),
    category: .general,
    language: .en,
    country: .us
  )
}
#endif

public enum SortBy: String, Decodable {
  case relevancy, popularity, publishedAt
}

