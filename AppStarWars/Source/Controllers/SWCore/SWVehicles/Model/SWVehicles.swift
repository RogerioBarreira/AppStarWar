//
//  SWVehicles.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 28/08/23.
//

import Foundation

// MARK: - SWVehicles
struct SWVehicles: Codable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: [ResultVehicles]?
}

// MARK: - ResultVehicles
struct ResultVehicles: Codable {
    let name, model, manufacturer, costInCredits: String?
    let length, maxAtmospheringSpeed, crew, passengers: String?
    let cargoCapacity, consumables, vehicleClass: String?
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
        case vehicleClass = "vehicle_class"
        case pilots, films, created, edited, url
    }
}
