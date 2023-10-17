import SwiftUI

struct StoresView: View{
    @State private var isScrollViewVisible: Bool = false
    var body: some View{
        VStack{
            HStack{
                HeaderView(title: "Campus Stores", icon: "bag.fill")
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
                    LocationTemplateView(template: TemplateView(image: Image("bookstore"), description: "UCR Bookstore", urlString: "https://ucr.bncollege.com/", icon: Image(systemName: "mappin.circle.fill")), location: "900 University Ave")
                    LocationTemplateView(template: TemplateView(image: Image("scottys"), description: "Scotty's", urlString: "https://dining.ucr.edu/scottys", icon: Image(systemName: "mappin.circle.fill")), location: "Glasgow & The Hub")
                    LocationTemplateView(template: TemplateView(image: Image("glen-mor-market"), description: "The Market", urlString: "https://dining.ucr.edu/campus-dining/market-at-glen-mor", icon: Image(systemName: "mappin.circle.fill")), location: "Glen Mor")
                    LocationTemplateView(template: TemplateView(image: Image("north-district-market"), description: "The Market", urlString: "https://dining.ucr.edu/campus-dining/market-at-north-district", icon: Image(systemName: "mappin.circle.fill")), location: "North District")
                }
            }
        }
    }
}
