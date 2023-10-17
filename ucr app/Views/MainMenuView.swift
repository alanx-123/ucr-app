import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ScrollView{
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
        .edgesIgnoringSafeArea(.top)
    }
}


struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
