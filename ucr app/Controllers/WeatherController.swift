import Foundation

class WeatherController: ObservableObject {
    @Published var currentTemperature: Double?
    @Published var clothingRecommendation: String = ""
    
    private let apiManager = WeatherAPIManager()
    
    init() {
        fetchWeather()
    }
    
    func fetchWeather() {
        apiManager.fetchWeather { temperature in
            self.currentTemperature = temperature
            self.clothingRecommendation = self.recommendation(for: temperature)
        }
    }
    
    private func recommendation(for temperature: Double?) -> String {
        guard let temp = temperature else { return "" }
        if temp < 60 {
            return "Consider wearing a jacket."
        } else if temp >= 60 && temp <= 75 {
            return "A long sleeve shirt should be comfortable."
        } else {
            return "It's warm! A t - shirt should be fine."
        }
    }
}
