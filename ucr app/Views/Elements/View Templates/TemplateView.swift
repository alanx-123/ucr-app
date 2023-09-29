import Foundation
import SwiftUI

//TemplateView: the base class that all the other view templates will inherit from
// Note: to initialize an inherited class, for example InfoTemplateView
// pass in "InfoTemplateView(template: ...)"  <- refer to "DiningHallMenuView"

struct TemplateView {
    let image: Image
    let description: String
    let url: URL
    let icon: Image?
    @State var showSafari: Bool = false

    // first initializer
    init(image: Image, description: String, urlString: String) {
        self.image = image
        self.description = description
        self.url = URL(string: urlString) ?? URL(string: "https://www.example.com")!
        self.icon = nil
    }

    // second initializer with icon passed in
    init(image: Image, description: String, urlString: String, icon: Image) {
        self.image = image
        self.description = description
        self.url = URL(string: urlString) ?? URL(string: "https://www.error.com")!
        self.icon = icon
    }
    
    func handleTap() {
        withAnimation {
            self.showSafari = true
        }
    }
}
