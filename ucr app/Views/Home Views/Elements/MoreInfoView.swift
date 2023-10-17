import SwiftUI

struct MoreInfoView: View{
    let text: String
    let url: URL
    @State private var showSafari = false
    
    init(text: String, urlString: String)
    {
        self.text = text
        self.url = URL(string: urlString) ?? URL(string: "https://www.error.com")!
    }
    var body: some View{
        Button(action: {
            withAnimation {
                showSafari = true
            }
            
        }) {
            HStack {
                Text("See All")
                    .font(.custom("Avenir Next", size: 18))
                    .fontWeight(.medium)
                Image(systemName: "arrowshape.turn.up.left.2.fill")
            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .foregroundColor(.red)
        .cornerRadius(8)
    
        .sheet(isPresented: $showSafari) {
            SafariController(url: url)
        }
    }
}
