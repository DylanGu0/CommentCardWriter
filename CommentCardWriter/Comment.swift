//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import Foundation

class Comment: ObservableObject {
    @Published var text: String = ""
    @Published var isHidden: Bool
    let subject: String
    var feeling: String

    init(comment: String, subject: String) {
        self.feeling = comment
        self.isHidden = false
        self.subject = subject
    }
    
    func generateComment() {
        text = "I think that \(self.subject) is going \(self.feeling)."
    }
    
}
