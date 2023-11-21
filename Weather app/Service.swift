//
//  Service.swift
//  Weather app
//
//  Created by Thiago Pereira de souza on 31/10/23.
//

import Foundation

struct City {
    let latitude: String
    let longitude: String
    let name: String
}

class Service {
    //4f70f644-79e6-11ee-9c62-0242ac130002-4f70f6a8-79e6-11ee-9c62-0242ac130002
    private let baseURL: String = "https://api.openweathermap.org/data/3.0/onecall"
    private let apiKey: String = "3b1321f08a5466a62d9953d8a13df116"
    
    private let session = URLSession.shared
    
    func fetchData(city: City, _ completion: @escaping (ForecastResponse?)-> Void) {
        let urlString = "\(baseURL)?lat=\(city.latitude)&lon=\(city.longitude)&appid=\(apiKey)"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = session.dataTask(with: url ) { data, response, error in
            
            guard let data else {
                completion(nil)
                return
            }
            
            do {
                let forecastResponse = try JSONDecoder().decode(ForecastResponse.self, from: data)
                print(forecastResponse)
                completion(forecastResponse)
            } catch {
                print(error)
                print(response.hashValue)
                completion(nil)
            }
        }
        
        task.resume()
    }
}
