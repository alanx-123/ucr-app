//
//  WeatherAPIManager.swift
//  ucr app
//
//  Created by Alan Xia on 9/6/23.
//

import Foundation
import SwiftUI

struct WeatherResponse: Codable {
    var main: Main
    struct Main: Codable {
        var temp: Double
    }
}

class WeatherAPIManager{
    static let shared = WeatherAPIManager()
    
    private let apiKey = "80a1b616b75509d06632503321dc72c9" // OpenWeatherMap API Key
    private let urlString = "https://api.openweathermap.org/data/2.5/weather?q=Riverside,CA,US&units=imperial&appid="
    
    func fetchWeather(completion: @escaping (Double?) -> Void) {
        guard let url = URL(string: urlString + apiKey) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data, let decodedResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data) {
                DispatchQueue.main.async {
                    completion(decodedResponse.main.temp)
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
}

