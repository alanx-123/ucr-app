import Foundation
import SwiftUI

struct MoreToExploreView: View{
    var body: some View{
        VStack{
            HeaderView(title: "More To Explore", icon: "questionmark.circle.fill")
            HorizontalScrollView{
                MiscTemplateView(template: TemplateView(image: Image("thehub"), description: "Dining Hours", urlString: "https://dining.ucr.edu/dining-hours", icon: Image(systemName: "clock.fill")))
                MiscTemplateView(template: TemplateView(image: Image("ucr-map"), description: "Campus Map", urlString: "https://campusmap.ucr.edu/", icon: Image(systemName: "map.fill")))
                MiscTemplateView(template: TemplateView(image: Image("course-database"), description: "Course Difficulty", urlString: "https://docs.google.com/spreadsheets/d/1qiy_Oi8aFiPmL4QSTR3zHe74kmvc6e_159L1mAUUlU0/edit#gid=0", icon: Image(systemName: "house.circle.fill")))
                MiscTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "house.circle.fill")))
                MiscTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "house.circle.fill")))
                
            }
        }
    }
}
