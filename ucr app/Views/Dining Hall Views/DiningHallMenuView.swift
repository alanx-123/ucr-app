import Foundation
import SwiftUI

struct DiningHallMenuView: View{
    var body: some View{
        HStack{
            Text("Dining Hall Menus")
                .font(.custom("Avenir Next", size: 20)) // change font
                .fontWeight(.light)
                .padding(.leading, 20)
            Image(systemName: "fork.knife.circle.fill")
                .font(.title3)
                .foregroundColor(.red)
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Divider().background(Color.gray)
            .background(Color.gray)
            .padding(.bottom, 10)
            .frame(height: 2)
            .opacity(0.5)
        
        HStack{
            InfoTemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "house.circle.fill"))
                .padding(.leading, 15)
            Spacer()
            InfoTemplateView(image: Image("lothian"), description: "Lothian", urlString:"https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=02&locationName=Lothian%20Residential%20Restaurant&naFlag=1", icon: Image(systemName: "house.circle.fill"))
                .padding(.trailing, 15)
        }
    }
}
