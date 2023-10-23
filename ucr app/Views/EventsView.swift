import SwiftUI

struct EventsView: View {
    var body: some View {
        VStack
        {
            EventsHeaderView()
            EventsTemplateView(template: TemplateView(image: Image("scottys"), description: "Scotty's", urlString: "https://dining.ucr.edu/scottys", icon: Image(systemName: "mappin.circle.fill")), location: "Glasgow & The Hub")
        }
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
