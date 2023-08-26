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
}
