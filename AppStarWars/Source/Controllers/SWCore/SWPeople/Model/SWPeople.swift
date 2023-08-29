//
//  SWPeople.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation

// MARK: - SWCharacter
struct SWPeople: Codable {
    
    let count: Int?
    let next: String?
    let previous: String?
    let results: [ResultPeople]?
}

// MARK: - ResultPeople
struct ResultPeople: Codable {
    
    let name, height, mass, hairColor: String?
    let skinColor, eyeColor, birthYear: String?
    let gender: Gender?
    let homeworld: String?
    let films, species, vehicles, starships: [String]?
    let created, edited: String?
    let url: String?
    
    enum CodingKeys: String, CodingKey {
        case name, height, mass
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender, homeworld, films, species, vehicles, starships, created, edited, url
    }
}

enum Gender: String, Codable {
    case hermaphrodite = "hermaphrodite"
    case male = "male"
    case female = "female"
    case nA = "n/a"
    case none = "none"
}
