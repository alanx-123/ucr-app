//
//  GreetingView.swift
//  ucr app
//
//  Created by Alan Xia on 9/6/23.
//

import Foundation
import SwiftUI

struct GreetingView: View {
    var body: some View {
        Text(timeBasedGreeting())
            .font(.custom("Avenir Next", size: 30))
    }
    
    private func timeBasedGreeting() -> String {
        let hour = Calendar.current.component(.hour, from: Date())
        
        if hour < 12 {
            return "Good Morning!"
        } else if hour < 17 {
            return "Good Afternoon!"
        } else {
            return "Good Evening!"
        }
    }
}



