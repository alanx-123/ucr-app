import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 12){
                SchoolHeaderView()
                DiningHallMenuView()
                CampusEatsView()
                MoreToExploreView()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}


struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
