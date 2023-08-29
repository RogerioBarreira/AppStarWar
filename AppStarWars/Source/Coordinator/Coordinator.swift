//
//  Coordinator.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation
import UIKit

class Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController?) {
        if navigationController == nil {
            self.navigationController = UINavigationController()
        }
        self.navigationController = navigationController ?? UINavigationController()
    }
    
    func start() {
        let vc = SWInitialViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func startSWHome() {
        let vc = SWHomeViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func startSWPeople() {
        let vc = SWPeopleViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func startSWPlanets() {
        let vc = SWPlanetsViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func startSWPlanetsSearch() {
        let vc = SWPlanetsSearchViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func startSWFilms() {
        let vc = SWFilmsViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func startSWSpecies() {
        let vc = SWSpeciesViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func startSWVehicles() {
        let vc = SWVehiclesViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func startSWStarships() {
        let vc = SWStarshipsViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
}
