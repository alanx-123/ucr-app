import Foundation
import SwiftUI

struct TemperatureView: View {
    @ObservedObject var weatherController = WeatherController()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack(spacing: 10){
                if let temperature = weatherController.currentTemperature {
                    Text("It's currently \(String(format: "%.0f°F", temperature)) at UC Riverside. \(weatherController.clothingRecommendation)")
                        .font(.custom("Avenir Next", size: 16))
                        .fontWeight(.medium)
                } else {
                    Text("Fetching weather data...")
                        .font(.custom("Avenir Next", size: 16))
                }
            }
        }
    }
}



