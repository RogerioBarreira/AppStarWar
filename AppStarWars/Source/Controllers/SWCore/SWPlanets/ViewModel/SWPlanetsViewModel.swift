//
//  SWPlanetsViewModel.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 27/08/23.
//

import Foundation


class SWPlanetsViewModel {
    
    private let worker = Worker()
    private var planets: [ResultPlanets] = []
    
    var numberOfRowPlanets: Int {
        return planets.count
    }
    
    func cellForRowPlanet(indexPath: IndexPath) -> ResultPlanets? {
        return planets[indexPath.row]
    }
    
    func requestPlanetsViewModel(completion: @escaping (Bool) -> Void) {
        worker.workerSWPlanet { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let myPlanet):
                self.planets = myPlanet.results ?? []
                completion(true)
            case .failure(_):
                completion(false)
            }
        }
    }
    
}
