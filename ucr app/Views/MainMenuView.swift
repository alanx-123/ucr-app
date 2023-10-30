import SwiftUI

struct MainMenuView: View {
    var body: some View {
        VStack {
            HStack { // head board
                Image("university-of-california-riverside-logo-E841E06699-seeklogo.com")
                    .resizable()
                    .frame(width: 50, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    
            }

            ZStack {
                ScrollView {
                    VStack(spacing: 20){
                        SchoolHeaderView()
                        DiningHallMenuView()
                        CampusEatsView()
                        RefreshmentsView()
                        StoresView()
                        MoreToExploreView()
                    }
                        .padding(.bottom, 15)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}
    


struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
