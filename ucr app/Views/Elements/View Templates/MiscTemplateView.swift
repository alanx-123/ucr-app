//MiscTemplateView: for displaying miscellaneous information panels under More to Explore

import Foundation
import SwiftUI

struct MiscTemplateView: View {
    let template: TemplateView
    @State private var showSafari = false
    
    var body: some View {
        VStack {
            template.image
                .resizable()
                .frame(width: 200, height: 150)
                .mask(TopRoundedRectangle(cornerRadius: 15))
                .overlay(
                    TopRoundedRectangle(cornerRadius: 15)
                        .stroke(Color.white, lineWidth: 2)
                )
            
            
            // text and optional Icon
            VStack {
                Spacer()
                HStack{
                    Text(template.description)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .font(Font.custom("HelveticaNeue-Bold", size: 22).weight(.bold))
                    
                    if let iconImage = template.icon {  // include icon only if it's not nil
                        iconImage
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                    }
                }
                .padding(.bottom, 10)
            }
            
        }
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 2)
        )
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray.opacity(0.8)) // dark blue
        )
        .shadow(color: .gray, radius: 5, x: 2, y: 2)
        .onTapGesture {
            withAnimation {
                showSafari = true
            }
        }
        .sheet(isPresented: $showSafari) {
            SafariView(url: template.url)
        }
    }
}

// only the top left and right corners are round
struct TopRoundedRectangle: Shape {
    var cornerRadius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: cornerRadius))
        path.addArc(center: CGPoint(x: cornerRadius, y: cornerRadius), radius: cornerRadius, startAngle: .degrees(180), endAngle: .degrees(270), clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX - cornerRadius, y: 0))
        path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: cornerRadius), radius: cornerRadius, startAngle: .degrees(270), endAngle: .degrees(360), clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY))
        
        path.closeSubpath()
        
        return path
    }
}
