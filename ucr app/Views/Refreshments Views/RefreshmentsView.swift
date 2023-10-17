import SwiftUI

struct RefreshmentsView: View{
    @State private var isScrollViewVisible: Bool = false
    var body: some View{
        VStack{
            HStack{
                HeaderView(title: "Refreshments", icon: "cup.and.saucer.fill")
                Button(action: {
                                withAnimation {
                                    isScrollViewVisible.toggle()
                                }
                            }) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 18, height: 18)
                                    .foregroundColor(.gray)
                                    .fontWeight(.medium)
                                    .padding(.trailing)
                            }
            }
            Divider().background(Color.gray)
                .background(Color.gray)
                .frame(height: 2)
                .opacity(0.5)
            
            if isScrollViewVisible{
                HorizontalScrollView{
                    LocationTemplateView(template: TemplateView(image: Image("starbucks"), description: "Starbucks", urlString: "https://dining.ucr.edu/campus-dining/market-at-glen-mor/starbucks", icon: Image(systemName: "mappin.circle.fill")), location: "Glen Mor Market")
                    LocationTemplateView(template: TemplateView(image: Image("coffee-bean"), description: "Coffee Bean", urlString: "https://www.coffeebean.com/stores/ca/riverside/900-university-boulevard", icon: Image(systemName: "mappin.circle.fill")), location: "Hub Plaza")
                    LocationTemplateView(template: TemplateView(image: Image("ivans"), description: "Ivan's", urlString: "https://dining.ucr.edu/campus-dining/ivans-at-hinderaker", icon: Image(systemName: "mappin.circle.fill")), location: "Hinderaker Hall")
                    LocationTemplateView(template: TemplateView(image: Image("bytes"), description: "Bytes", urlString: "https://dining.ucr.edu/campus-dining/bytes", icon: Image(systemName: "mappin.circle.fill")), location: "Winston Chung Hall")
                    LocationTemplateView(template: TemplateView(image: Image("emerbees"), description: "Emerbees", urlString: "https://dining.ucr.edu/campus-dining/hub-plaza-dining#Halal", icon: Image(systemName: "mappin.circle.fill")), location: "Materials Science")
                }
            }
        }
    }
}
