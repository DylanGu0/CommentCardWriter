//
//  RootTabView.swift
//  CommentCardWriter
//
//  Created by Guo, Dylan (Coll) on 04/03/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem() {
                    Image(systemName: "square.and.pencil")
                    Text("Write New Comments")
                }
            PreviousCommentsView()
                .tabItem() {
                    Image(systemName: "folder")
                    Text("View Saved Comments")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
