//
//  SWSpeciesViewController.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 28/08/23.
//

import Foundation
import UIKit

class SWSpeciesViewController: UIViewController {
    
    lazy var viewSWSpecies: SWSpeciesView = {
        let view = SWSpeciesView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = viewSWSpecies
    }
}
