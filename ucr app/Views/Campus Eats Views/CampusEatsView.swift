import Foundation
import SwiftUI

struct CampusEatsView: View{
    var body: some View{
        VStack{
            HStack{
                HeaderView(title: "Campus Eats", icon: "takeoutbag.and.cup.and.straw.fill")
                Spacer()
                MoreInfoView(text: "See all", urlString: "https://dining.ucr.edu/campus-dining")
            }
            Divider().background(Color.gray)
                .background(Color.gray)
                .frame(height: 2)
                .opacity(0.5)
            
            HorizontalScrollView{
                LocationTemplateView(template: TemplateView(image: Image("barn"), description: "The Barn", urlString: "https://dining.ucr.edu/campus-dining/the-barn", icon: Image(systemName: "mappin.circle.fill")), location: "W. Campus Drive")
                LocationTemplateView(template: TemplateView(image: Image("glasgow"), description: "The Habit", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "mappin.circle.fill")), location: "Hub Plaza")
                LocationTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "mappin.circle.fill")), location: "The Hub")
                LocationTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "mappin.circle.fill")), location: "The Hub")
            }
        }
    }
}
