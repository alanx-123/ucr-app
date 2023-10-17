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
                LocationTemplateView(template: TemplateView(image: Image("barn"), description: "The Barn", urlString: "https://dining.ucr.edu/campus-dining/the-barn", icon: Image(systemName: "mappin.circle.fill")), location: "W Campus Drive")
                LocationTemplateView(template: TemplateView(image: Image("habit"), description: "The Habit", urlString: "https://dining.ucr.edu/campus-dining/hub-plaza-dining#habit", icon: Image(systemName: "mappin.circle.fill")), location: "Hub Plaza")
                LocationTemplateView(template: TemplateView(image: Image("halal-shack"), description: "Panda Express", urlString: "https://www.pandaexpress.com/locations/ca/riverside/900-university-ave", icon: Image(systemName: "mappin.circle.fill")), location: "Hub Plaza")
                LocationTemplateView(template: TemplateView(image: Image("hibachisan"), description: "Hibachi San", urlString: "https://dining.ucr.edu/campus-dining/hub-plaza-dining#hibachisan", icon: Image(systemName: "mappin.circle.fill")), location: "Hub Plaza")
                LocationTemplateView(template: TemplateView(image: Image("halal-shack"), description: "The Halal Shack", urlString: "https://dining.ucr.edu/campus-dining/hub-plaza-dining#Halal", icon: Image(systemName: "mappin.circle.fill")), location: "Hub Plaza")
                LocationTemplateView(template: TemplateView(image: Image("chronic-tacos"), description: "Chronic Tacos", urlString: "https://www.chronictacos.com/restaurant/uc-riverside/900-university-ave", icon: Image(systemName: "mappin.circle.fill")), location: "Hub Plaza")
                LocationTemplateView(template: TemplateView(image: Image("subway"), description: "Subway", urlString: "https://dining.ucr.edu/campus-dining/hub-plaza-dining#subway", icon: Image(systemName: "mappin.circle.fill")), location: "Hub Plaza")
                LocationTemplateView(template: TemplateView(image: Image("fry-house"), description: "Fry House", urlString: "https://www.pandaexpress.com/locations/ca/riverside/900-university-ave", icon: Image(systemName: "mappin.circle.fill")), location: "North District")
                
                
            }
        }
    }
}
