import Foundation
import SwiftUI

// this class due for a name change

struct LocationTemplateView: View{
    let image: Image
    let description: String
    let url: URL
    let icon: Image?  // optional icon for customization
    @State private var showSafari = false
    
    // first initializer
    init(image: Image, description: String, urlString: String) {
        self.image = image
        self.description = description
        self.url = URL(string: urlString) ?? URL(string: "https://www.example.com")!
        self.icon = nil
    }
    
    // second initializer with icon passed in
    init(image: Image, description: String, urlString: String, icon: Image) {
        self.image = image
        self.description = description
        self.url = URL(string: urlString) ?? URL(string: "https://www.error.com")!
        self.icon = icon
    }
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .frame(width: 170, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            // dark opacity
            Color.black.opacity(0.33)
                .frame(width: 170, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            // text and optional Icon
            VStack {
                Text(description)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(Font.custom("HelveticaNeue-Bold", size: 22).weight(.bold))
                
                if let iconImage = icon {  // include icon only if it's not nil
                    iconImage
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                }
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 2)
        )
        .shadow(color: .gray, radius: 5, x: 2, y: 2)
        .onTapGesture {
            withAnimation {
                showSafari = true
            }
        }
        .sheet(isPresented: $showSafari) {
            SafariView(url: url)
        }
    }
}
