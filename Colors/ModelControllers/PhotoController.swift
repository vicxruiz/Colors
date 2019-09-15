//
//  PhotoController.swift
//  Colors
//
//  Created by Victor  on 9/15/19.
//  Copyright © 2019 Victor . All rights reserved.
//

import Foundation

class PhotoController {
    
    let dataGetter = DataGetter()
    
    let baseURL = URL(string: "https://jsonplaceholder.typicode.com/photos?albumId=1")!
    
    enum HTTPMethod: String {
        case get = "GET"
        case put = "PUT"
        case post = "POST"
        case delete = "DELETE"
    }
    
    func fetchPhoto(completion: @escaping ([Photo]?, Error?) -> Void) {
        var request = URLRequest(url: baseURL)
        request.httpMethod = HTTPMethod.get.rawValue
        dataGetter.fetchData(with: request) { (_, data, error) in
            if let error = error {
                print("error fetching data")
                completion(nil, error)
            } else {
                completion(nil, nil)
            }
            
            guard let data = data else {
                print("data no good")
                completion(nil, DataGetter.NetworkError.badData)
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let data = try decoder.decode([Photo].self, from: data)
                completion(data, nil)
            } catch {
                print(error.localizedDescription)
                completion(nil, error)
            }
        }
    }
}
