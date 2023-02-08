//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var comment: Comment = Comment(comment: feeling.randomElement() ?? "Mediocre", subject: "computer science")
    
    var body: some View {
        VStack(spacing: 100) {
            if comment.isHidden {
                Text("\(comment.text)")
            } else {
                Text("Comment will be generated here...")
            }
            Button("Generate Comment", action: {
                comment.isHidden.toggle()
                comment.generateComment()
            })
            Picker(label: "How well is this class going") {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#if DEBUG
let feeling = ["well", "badly", "mediocrely", "amazingly", "terribly"]
#endif
