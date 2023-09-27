// HorizontalScrollView: a custom class used to store a horizontal collection of InfoTemplateViews

import Foundation
import SwiftUI

struct HorizontalScrollView<Content: View>: View {
    let content: Content
        
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
        
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                content
            }
            .padding()
        }
    }
}
