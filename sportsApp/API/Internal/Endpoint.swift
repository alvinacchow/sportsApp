//
//  Endpoint.swift
//  sportsApp
//
//  Created by Alvina Chow on 2/3/24.
//

import Foundation

struct Endpoint {
  let path: String
  let queryItems: [URLQueryItem]
}

extension Endpoint {
  var url: URL? {
    var components = URLComponents()
    components.scheme = "https"
    components.host = "newsapi.org"
    components.path = "/v2/\(path)"
    components.queryItems = queryItems

    return components.url
  }
}

extension Endpoint {
  static func search(
    key: String,
    query: String,
    sources: [String] = [],
    sortBy: SortBy? = nil,
    language: Language? = nil,
    from: String? = "2024-01-02",
    pageSize: Int? = 10
  ) -> Self {
    return .init(
      path: "everything",
      queryItems: [
        URLQueryItem(name: "apiKey", value: key),
        URLQueryItem(name: "q", value: query),
        URLQueryItem(name: "sources", value: sources.joined(separator: ",")),
        URLQueryItem(name: "sortBy", value: sortBy?.rawValue),
        URLQueryItem(name: "language", value: language?.rawValue),
        URLQueryItem(name: "from", value: from),
        URLQueryItem(name: "pageSize", value: pageSize.map { String($0) })
      ])
  }

  static func topHeadlines(
    key: String,
    query: String? = nil,
    sources: [String] = [],
    category: NewsSourceCategory? = nil,
    country: Country? = nil,
    language: Language? = nil
  ) -> Self {
    return .init(
      path: "top-headlines",
      queryItems: [
        URLQueryItem(name: "apiKey", value: key),
        URLQueryItem(name: "q", value: query),
        URLQueryItem(name: "sources", value: sources.joined(separator: ",")),
        URLQueryItem(name: "category", value: category?.rawValue),
        URLQueryItem(name: "country", value: country?.rawValue),
        URLQueryItem(name: "language", value: language?.rawValue)
      ])
  }

  static func sources(
    key: String,
    category: NewsSourceCategory? = nil,
    language: Language? = nil,
    country: Country? = nil
  ) -> Self {
    return .init(
      path: "sources",
      queryItems: [
        URLQueryItem(name: "apiKey", value: key),
        URLQueryItem(name: "category", value: category?.rawValue),
        URLQueryItem(name: "language", value: language?.rawValue),
        URLQueryItem(name: "country", value: country?.rawValue)
      ])
  }
}
