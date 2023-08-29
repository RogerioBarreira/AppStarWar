//
//  SWFims.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 27/08/23.
//

import Foundation

// MARK: - SWFilms
struct SWFilms: Codable {
    let count: Int?
    let next, previous: String?
    let results: [ResultFilms]?
}

// MARK: - ResultFilms
struct ResultFilms: Codable {
    let title: String?
    let episodeID: Int?
    let openingCrawl, director, producer, releaseDate: String?
    let characters, planets, starships, vehicles: [String]?
    let species: [String]?
    let created, edited: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case title
        case episodeID = "episode_id"
        case openingCrawl = "opening_crawl"
        case director, producer
        case releaseDate = "release_date"
        case characters, planets, starships, vehicles, species, created, edited, url
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

