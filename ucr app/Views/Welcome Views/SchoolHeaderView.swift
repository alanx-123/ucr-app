import Foundation
import SwiftUI

struct SchoolHeaderView: View {
    var body: some View {
        ZStack { //background image
            Image("ucr-and-bell-tower")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4)
                .clipped()
                .overlay(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.5), Color.black.opacity(0.2)]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 10) {
                DateView()
                
                GreetingView()
                    .font(.largeTitle)
                    .bold()
                
                TemperatureView()
            }
            .padding(.bottom, 20)
            .padding(.leading, 20)
            .foregroundColor(.white) 
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        }
    }
}


