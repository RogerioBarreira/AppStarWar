//
//  SWInitialViewController.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import UIKit

class SWInitialViewController: UIViewController {
    
    lazy var viewSWInitial: SWInitialView = {
        let view = SWInitialView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupActions()
    }
    
    override func loadView() {
        self.view = viewSWInitial
    }
    
    private func setupActions() {
        viewSWInitial.buttonEnter.addTarget(
            self,
            action: #selector(buttonEnterTap),
            for: .touchUpInside
        )
    }
    
    @objc
    private func buttonEnterTap() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startSWHome()
    }
}

