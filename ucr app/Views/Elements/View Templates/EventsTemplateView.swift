
import SwiftUI

// for campus eats, refreshments, campus stores

struct EventsTemplateView: View{
    let template: TemplateView
    let location: String
    @State private var showSafari = false
    
    //custom initializer for the location
    init(template: TemplateView, location: String) {
        self.template = template
        self.location = location
    }
    
    var body: some View {
        ZStack {
            template.image
                .resizable()
                .frame(width: 200, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            // dark opacity
            Color.black.opacity(0.33)
                .frame(width: 200, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            // text, optional icon and location
            VStack {
                Spacer()
                HStack {
                    Text(template.description)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .font(Font.custom("Avenir Next", size: 20).weight(.bold))
                    Spacer()
                }
                HStack (spacing: 3){
                    if let iconImage = template.icon {  // include icon only if it's not nil
                        iconImage
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                    Text(self.location)
                        .foregroundColor(.white)
                        .font(Font.custom("Avenir Next", size: 16).weight(.light))
                    Spacer()
                }
            }
                .padding(.bottom, 10)
                .padding(.leading, 10)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray)
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
