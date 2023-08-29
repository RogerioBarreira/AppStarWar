//
//  SWPeopleViewModel.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation

class SWPeopleViewModel {
    private var people: [ResultPeople] = []
    private let worker = Worker()
    var pageCurrent = 1
    var totalPage = 0
    var isLoading = false
    
    var numberOfRows: Int {
        people.count
    }
    
    var newPeople: [ResultPeople] {
        return people
    }
    
    func pageAdd() {
        pageCurrent = pageCurrent + 1
    }
    
    func cellForRows(indexPath: IndexPath) -> ResultPeople? {
        return people[indexPath.row]
    }
    
    func requestSWPeople(completion: @escaping(Bool) -> Void) {
        isLoading = true
        worker.workerSWPeople { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let people):
                self.people = people.results ?? []
                self.totalPage = people.count ?? 0
                completion(true)
            case .failure(_):
                completion(false)
            }
        }
    }
    
    func requestSWPeopleAdd(completion: @escaping(Bool) -> Void) {
        worker.workerSWPeople(page: pageCurrent) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let people):
                if let newPerson = people.results {
                    self.people.append(contentsOf: newPerson)
                }
                completion(true)
            case .failure(_):
                completion(false)
            }
        }
    }
}
