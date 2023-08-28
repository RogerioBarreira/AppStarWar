//
//  SWPlanetsViewController.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 27/08/23.
//

import UIKit

class SWPlanetsViewController: UIViewController {
    
    lazy var viewSWPlanets: SWPlanetsView = {
        let view = SWPlanetsView()
        return view
    }()
    
    let viewModelPlanets = SWPlanetsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRequest()
        viewSWPlanets.configTableView(delegate: self, dataSource: self)
        setupActions()

    }
    
    override func loadView() {
        self.view = viewSWPlanets
    }
    
    private func setupRequest() {
        viewSWPlanets.loading.startAnimating()
        viewModelPlanets.requestPlanetsViewModel { [weak self] success in
            guard let self = self else { return }
            self.viewSWPlanets.loading.stopAnimating()
            if success {
                self.viewSWPlanets.tableViewReloadData()
            } else {
                self.showMessageErro(title: "Erro", message: "Erro na Request")
            }
        }
    }
    
    func showMessageErro(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let buttoAction = UIAlertAction(title: "Ok", style: .destructive)
        alert.addAction(buttoAction)
        self.present(alert, animated: true)
    }
    
    private func setupActions() {
        viewSWPlanets.contentViewHeader.addTarget(
            self,
            action: #selector(buttonSWPlanetsTap),
            for: .touchUpInside
        )
    }
    
    @objc
    private func buttonSWPlanetsTap() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startSWPlanetsSearch()
    }
}

extension SWPlanetsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelPlanets.numberOfRowPlanets
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: SWPlanetsCell.identifier, for: indexPath) as? SWPlanetsCell {
            cell.setupCell(name: viewModelPlanets.cellForRowPlanet(indexPath: indexPath))
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
