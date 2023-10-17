import Foundation
import SwiftUI

struct MoreToExploreView: View{
    @State private var isScrollViewVisible: Bool = false
    
    var body: some View{
        VStack{
            HStack
            {
                HeaderView(title: "More to Explore", icon: "questionmark.circle.fill")
                Button(action: {
                                withAnimation {
                                    isScrollViewVisible.toggle()
                                }
                            }) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.gray)
                                    .fontWeight(.medium)
                                    .padding(.trailing,20)
                            }
            }
            Divider().background(Color.gray)
                .background(Color.gray)
                .frame(height: 2)
                .opacity(0.5)
            if isScrollViewVisible{
                HorizontalScrollView{
                    MiscTemplateView(template: TemplateView(image: Image("thehub"), description: "Dining Hours", urlString: "https://dining.ucr.edu/dining-hours", icon: Image(systemName: "clock.fill")))
                    MiscTemplateView(template: TemplateView(image: Image("ucr-map"), description: "Campus Map", urlString: "https://campusmap.ucr.edu/", icon: Image(systemName: "map.fill")))
                    MiscTemplateView(template: TemplateView(image: Image("bus-routes"), description: "Bus Routes", urlString: "https://transportation.ucr.edu/bus", icon: Image(systemName: "bus")))
                    MiscTemplateView(template: TemplateView(image: Image("classrooms"), description: "Classrooms", urlString: "https://classrooms.ucr.edu/", icon: Image(systemName: "building.2.fill")))
                    MiscTemplateView(template: TemplateView(image: Image("course-database"), description: "Course Difficulty", urlString: "https://docs.google.com/spreadsheets/d/1qiy_Oi8aFiPmL4QSTR3zHe74kmvc6e_159L1mAUUlU0/edit#gid=0", icon: Image(systemName: "graduationcap.fill")))
                }
            }
        }
    }
}
