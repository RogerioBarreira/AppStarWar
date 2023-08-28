//
//  SWHomeViewController.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation
import UIKit

class SWHomeViewController: UIViewController {
    
    lazy var viewSWHome: SWHomeView = {
        let view = SWHomeView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupActions()
    }
    
    override func loadView() {
        self.view = viewSWHome
    }
    
    private func setupActions() {
        viewSWHome.buttonPeople.addTarget(
            self,
            action: #selector(buttonPeopleTap),
            for: .touchUpInside
        )
        
        viewSWHome.buttonPlanets.addTarget(
            self,
            action: #selector(buttonPlanetsTap),
            for: .touchUpInside
        )
        
        viewSWHome.buttonFilms.addTarget(
            self,
            action: #selector(buttonFilmsTap),
            for: .touchUpInside
        )
        
        viewSWHome.buttonSpecies.addTarget(
            self,
            action: #selector(buttonSpeciesTap),
            for: .touchUpInside
        )
        
        viewSWHome.buttonVehicles.addTarget(
            self,
            action: #selector(buttonVehiclesTap),
            for: .touchUpInside
        )
        
        viewSWHome.buttonStarships.addTarget(
            self,
            action: #selector(buttonStarshipsTap),
            for: .touchUpInside
        )
    }
    
    @objc
    private func buttonPeopleTap() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startSWPeople()
    }
    
    @objc
    private func buttonPlanetsTap() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startSWPlanets()
    }
    
    @objc
    private func buttonFilmsTap() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startSWFilms()
    }
    
    @objc
    private func buttonSpeciesTap() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startSWSpecies()
    }
    
    @objc
    private func buttonVehiclesTap() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startSWVehicles()
    }
    
    @objc
    private func buttonStarshipsTap() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startSWStarships()
    }
}
