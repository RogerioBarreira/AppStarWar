//
//  SWVehiclesViewController.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 28/08/23.
//

import Foundation
import UIKit

class SWVehiclesViewController: UIViewController {
    
    lazy var viewSWVehicles: SWVehiclesView = {
        let view = SWVehiclesView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = viewSWVehicles
    }
}
