//
//  SWPeopleViewController.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation
import UIKit

class SWPeopleViewController: UIViewController {
    
    lazy var viewSWPeople: SWPeopleView = {
        let view = SWPeopleView()
        return view
    }()
    
    let viewModelSWPeople = SWPeopleViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSWPeople.configTableView(delegate: self, dataSource: self)
        setupRequest()
    }
    
    override func loadView() {
        self.view = viewSWPeople
    }
    
    func setupRequest() {
        viewSWPeople.loading.startAnimating()
        viewModelSWPeople.requestSWPeople { [weak self] success in
            self?.viewSWPeople.loading.stopAnimating()
            guard let self = self else { return }
            if success {
                self.viewSWPeople.tableViewReloadData()
            } else {
                print("Reqyest Error")
            }
        }
    }
}

extension SWPeopleViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelSWPeople.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: SWPeopleCell.identifier, for: indexPath) as? SWPeopleCell {
            cell.setupCell(name: viewModelSWPeople.cellForRows(indexPath: indexPath))
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == viewModelSWPeople.newPeople.count - 2  && !viewModelSWPeople.isLoading && indexPath.row != viewModelSWPeople.totalPage - 2 {
            
            viewModelSWPeople.pageAdd()
            
            print("Paginas adicionadas: \(self.viewModelSWPeople.pageCurrent)")
            viewSWPeople.loading.startAnimating()
            viewModelSWPeople.requestSWPeopleAdd { [weak self] success in
                guard let self = self else { return }
                self.viewSWPeople.loading.stopAnimating()
                if success {
                    self.viewModelSWPeople.isLoading = false
                    print("Carregando mais personagens...")
                    self.viewSWPeople.tableViewReloadData()
                    print("Person ja carregados: \(self.viewModelSWPeople.newPeople.count)")
                } else {
                    print("Erro Resquest AddCharacter")
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
