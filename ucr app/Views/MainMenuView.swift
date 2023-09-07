//
//  MainMenuView.swift
//  ucr app
//
//  Created by Alan Xia on 9/6/23.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                SchoolHeaderView()
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
