//
//  SWStarships.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 28/08/23.
//

import Foundation

// MARK: - SWStarships
struct SWStarships: Codable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: [ResultStarships]?
}

// MARK: - ResultStarships
struct ResultStarships: Codable {
    let name, model, manufacturer, costInCredits: String?
    let length, maxAtmospheringSpeed, crew, passengers: String?
    let cargoCapacity, consumables, hyperdriveRating, mglt: String?
    let starshipClass: String?
    let pilots, films: [String]?
    let created, edited: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case name, model, manufacturer
        case costInCredits = "cost_in_credits"
        case length
        case maxAtmospheringSpeed = "max_atmosphering_speed"
        case crew, passengers
        case cargoCapacity = "cargo_capacity"
        case consumables
        case hyperdriveRating = "hyperdrive_rating"
        case mglt = "MGLT"
        case starshipClass = "starship_class"
        case pilots, films, created, edited, url
    }
}
