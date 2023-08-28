//
//  SWStarshipsViewController.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 28/08/23.
//

import Foundation
import UIKit

class SWStarshipsViewController: UIViewController {
    
    lazy var viewSWStarships: SWStarshipsView = {
        let view = SWStarshipsView()
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = viewSWStarships
    }
}
