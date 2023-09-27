import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 15){
                SchoolHeaderView()
                DiningHallMenuView()
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
