//
//  SWPlanets.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 27/08/23.
//

import Foundation

// MARK: - SWPlanets
struct SWPlanets: Codable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: [ResultPlanets]?
}

// MARK: - ResultPlanets
struct ResultPlanets: Codable {
    let name, rotationPeriod, orbitalPeriod, diameter: String?
    let climate, gravity, terrain, surfaceWater: String?
    let population: String?
    let residents, films: [String]?
    let created, edited: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case name
        case rotationPeriod = "rotation_period"
        case orbitalPeriod = "orbital_period"
        case diameter, climate, gravity, terrain
        case surfaceWater = "surface_water"
        case population, residents, films, created, edited, url
    }
}
