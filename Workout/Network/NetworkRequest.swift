//
//  NetworkRequest.swift
//  Workout
//
//  Created by Anton Makarov on 18.04.2022.
//

import Foundation


class NetworkRequest {
    
    static let shared = NetworkRequest()
    private init() {}
    
    func requestData(completion: @escaping (Result <Data, Error>) -> Void) {
        
        let key = "7d2ce4c660d26aaf2122fccf890f187b"
        let latitude = 52.7316900
        let longitude = 41.4432600
        
        let urlString = "https://api.darksky.net/forecast/\(key)/\(latitude),\(longitude)"
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                    return
                }
                guard let data = data else {return }
                completion(.success(data))
            }
        }
        .resume()
    }
}
