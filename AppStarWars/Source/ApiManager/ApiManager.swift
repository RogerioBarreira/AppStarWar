//
//  ApiManager.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation

enum CustomError: Error {
    case invalidUrl
    case invalidData
    case erroResponse
    case erroStatusCode(Int)
}

class ApiManager: NSObject {
    
    enum Method: String {
        case get = "GET"
    }
    
    func request<T: Codable>(urlString: String, method: Method, expecting: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        
        guard let url = URL(string: urlString) else {
            completion(.failure(CustomError.invalidUrl))
            return
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                completion(.failure(error))
            } else {
                guard let response = response as? HTTPURLResponse else {
                    completion(.failure(CustomError.erroResponse))
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {
                        completion(.failure(CustomError.invalidData))
                        return
                    }
                    do {
                        let jsonData = try JSONDecoder().decode(expecting.self, from: data)
                        DispatchQueue.main.async {
                            completion(.success(jsonData))
                        }
                    } catch {
                        completion(.failure(error.localizedDescription as! Error))
                    }
                } else {
                    completion(.failure(CustomError.erroStatusCode(response.statusCode)))
                }
            }
        }
        task.resume()
    }
}

