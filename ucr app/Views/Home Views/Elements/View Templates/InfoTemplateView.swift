import Foundation
import SwiftUI

struct InfoTemplateView: View {
    let template: TemplateView
    @State private var showSafari = false

    var body: some View {
        ZStack {
            template.image
                .resizable()
                .frame(width: 170, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            // dark opacity
            Color.black.opacity(0.33)
                .frame(width: 170, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            // text and optional Icon
            VStack{
                Text(template.description)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(Font.custom("Avenir Next", size: 22).weight(.bold))
                
                if let iconImage = template.icon {  // include icon only if it's not nil
                    iconImage
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                }
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 1)
        )
        .shadow(color: .gray, radius: 5, x: 2, y: 2)
        .onTapGesture {
            withAnimation {
                showSafari = true
            }
        }
        .sheet(isPresented: $showSafari) {
            SafariController(url: template.url)
        }
    }
}
