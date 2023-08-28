//
//  SWPlanetsSearchViewController.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 27/08/23.
//

import Foundation
import UIKit

class SWPlanetsSearchViewController: UIViewController {
    
    lazy var viewPlanetsSearch: SWPlanetsSearchView = {
        let view = SWPlanetsSearchView ()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = viewPlanetsSearch
    }
}
