//
//  APIResponse.swift
//  sportsApp
//
//  Created by Alvina Chow on 2/3/24.
//

import Foundation

protocol HasElementsType {
  associatedtype Element
  var elements: [Element] { get }
}

struct APIReponse<T: Decodable & HasElementsType>: Decodable {

  let result: Result<[T.Element], ErrorResponse>

  init(from decoder: Decoder) throws {
    let response = try StatusResponse(from: decoder)
    switch response.status {
    case .ok:
        let response = try T(from: decoder)
        result = .success(response.elements)
    case .error:
      let response = try ErrorResponse(from: decoder)
      result = .failure(response)
    }
  }
}

struct ArticlesResponse: Decodable, HasElementsType {
  let articles: [NewsArticle]
  let totalResults: Int
  var elements: [NewsArticle] { articles }
}

struct SourcesResponse: Decodable, HasElementsType {
  let sources: [NewsSource]
  var elements: [NewsSource] { sources }
}

private struct StatusResponse: Decodable {

  enum Status: String, Decodable {
    case ok, error
  }

  let status: Status
}
