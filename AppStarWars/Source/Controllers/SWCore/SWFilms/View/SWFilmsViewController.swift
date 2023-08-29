//
//  SWFilmsViewController.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 28/08/23.
//

import Foundation
import UIKit

class SWFilmsViewController: UIViewController {
    
    lazy var viewSWFilms: SWFilmsView = {
        let view = SWFilmsView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = viewSWFilms
    }
}
