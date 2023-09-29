import Foundation
import SwiftUI

struct DiningHallMenuView: View{
    var body: some View{
        HeaderView(title: "Dining Hall Menus", icon: "fork.knife.circle.fill")
        
        HStack{
            InfoTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "house.circle.fill")))
                .padding(.leading, 15)
            Spacer()
            InfoTemplateView(template: TemplateView(image: Image("lothian"), description: "Lothian", urlString:"https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=02&locationName=Lothian%20Residential%20Restaurant&naFlag=1", icon: Image(systemName: "house.circle.fill")))
                .padding(.trailing, 15)
        }
    }
}
