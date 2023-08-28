//
//  ApiService.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation

enum ApiService {
    
    case people
    case planets
    case films
    case species
    case vehicles
    case starships
    
    var baseUrl: String {
        switch self {
        case .people, .planets, .films, .species, .vehicles, .starships: return "https://swapi.dev/api/"
        }
    }
    
    var endPoint: String {
        switch self {
        case .people:
            return "people/"
        case .planets:
            return "planets/"
        case .films:
            return "films/"
        case .species:
            return "species/"
        case .vehicles:
            return "vehicles/"
        case .starships:
            return "starships/"
        }
    }
    
//    var method: String {
//        switch self {
//        case .people, .planets, .films, .species, .vehicles, .starships: return "GET"
//        }
//    }
}
