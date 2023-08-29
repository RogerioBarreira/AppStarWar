//
//  Worker.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation

class Worker {
    
    private let apiManager = ApiManager()
    
    func workerSWPeople(page: Int = 0, completion: @escaping (Result<SWPeople, Error>) -> Void) {
        let defaut = 1
        let pageIn = defaut + page
        let baseUrl = ApiService.people.baseUrl
        let endPoint = ApiService.people.endPoint
        let url = "\(baseUrl)\(endPoint)?page=\(pageIn)"
        
        apiManager.request(urlString: url, method: .get, expecting: SWPeople.self) { result in
            print(url)
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func workerSWPlanet(page: Int = 0, completion: @escaping (Result<SWPlanets, Error>) -> Void) {
        let defaut = 1
        let pageIn = defaut + page
        let baseUrl = ApiService.planets.baseUrl
        let endPoint = ApiService.planets.endPoint
        let url = "\(baseUrl)\(endPoint)?page=\(pageIn)"
        
        apiManager.request(urlString: url, method: .get, expecting: SWPlanets.self) { result in
            print(url)
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func workerSWFims(completion: @escaping (Result<SWFilms, Error>) -> Void) {
        let baseUrl = ApiService.films.baseUrl
        let endPoint = ApiService.films.endPoint
        let url = "\(baseUrl)\(endPoint)"
        
        apiManager.request(urlString: url, method: .get, expecting: SWFilms.self) { result in
            print(url)
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func workerSWSpecies(page: Int = 0, completion: @escaping (Result<SWSpecies, Error>) -> Void) {
        let defaut = 1
        let pageIn = defaut + page
        let baseUrl = ApiService.species.baseUrl
        let endPoint = ApiService.species.endPoint
        let url = "\(baseUrl)\(endPoint)?page=\(pageIn)"
        
        apiManager.request(urlString: url, method: .get, expecting: SWSpecies.self) { result in
            print(url)
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func workerSWVehicles(page: Int = 0, completion: @escaping (Result<SWVehicles, Error>) -> Void) {
        let defaut = 1
        let pageIn = defaut + page
        let baseUrl = ApiService.vehicles.baseUrl
        let endPoint = ApiService.vehicles.endPoint
        let url = "\(baseUrl)\(endPoint)?page=\(pageIn)"
        
        apiManager.request(urlString: url, method: .get, expecting: SWVehicles.self) { result in
            print(url)
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func workerSWStarships(page: Int = 0, completion: @escaping (Result<SWStarships, Error>) -> Void) {
        let defaut = 1
        let pageIn = defaut + page
        let baseUrl = ApiService.starships.baseUrl
        let endPoint = ApiService.starships.endPoint
        let url = "\(baseUrl)\(endPoint)?page=\(pageIn)"
        
        apiManager.request(urlString: url, method: .get, expecting: SWStarships.self) { result in
            print(url)
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
