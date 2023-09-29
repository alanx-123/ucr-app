import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 15){
                SchoolHeaderView()
                DiningHallMenuView()
                
                HeaderView(title: "Campus Eateries", icon: "takeoutbag.and.cup.and.straw.fill")
                
                HeaderView(title: "More To Explore", icon: "questionmark.circle.fill")
                HorizontalScrollView{
                    MiscTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "house.circle.fill")))
                    MiscTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "house.circle.fill")))
                    MiscTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "house.circle.fill")))
                    MiscTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "house.circle.fill")))
                    MiscTemplateView(template: TemplateView(image: Image("glasgow"), description: "Glasgow", urlString: "https://foodpro.ucr.edu/foodpro/shortmenu.asp?sName=University%20of%20California%2C%20Riverside%20Dining%20Services&locationNum=03&locationName=Glasgow&naFlag=1&_gl=1*1vmy9lj*_ga*MTA5NTkwMzA5My4xNjY2NTc0MDQw*_ga_S8BZQKWST2*MTY5NTUzODQzOC4zMjQuMS4xNjk1NTM4NDQzLjAuMC4w*_ga_Z1RGSBHBF7*MTY5NTUzODQzOC4zMjIuMS4xNjk1NTM4NDQzLjAuMC4w", icon: Image(systemName: "house.circle.fill")))
                    
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
