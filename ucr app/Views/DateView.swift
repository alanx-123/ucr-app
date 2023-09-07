//
//  DateView.swift
//  ucr app
//
//  Created by Alan Xia on 9/6/23.
//

import Foundation
import SwiftUI

struct DateView: View {
    var body: some View {
        HStack (spacing: 8){
            Image(systemName: "calendar")
            Text(Date(), style: .date)
                .font(.custom("Avenir Next", size: 16))
        }
    }
}
