//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {

    @State private var comment: Comment
    var body: some View {
        VStack(spacing: 150) {
            Text("\(comment.text)")
            Button("Generate Comment", action: {
                comment.isHidden.toggle()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#if DEBUG
comments = ["Good", "Bad", "Mediocre", "Amazing", "Terrible"]
comment = Comment(comment(comments.randomElement()))
