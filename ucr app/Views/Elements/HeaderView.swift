import Foundation
import SwiftUI

struct HeaderView: View{
    let title: String
    let icon: String
    
    init(title: String, icon: String)
    {
        self.title = title
        self.icon = icon
    }
    var body: some View {
        HStack{
            Text(title)
                .font(.custom("Avenir Next", size: 20)) // change font
                .fontWeight(.light)
                .padding(.leading, 20)
            Image(systemName: icon)
                .font(.title3)
                .foregroundColor(.red)
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Divider().background(Color.gray)
            .background(Color.gray)
            .padding(.bottom, 10)
            .frame(height: 2)
            .opacity(0.5)
    }
}
