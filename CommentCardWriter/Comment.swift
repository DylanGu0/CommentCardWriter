//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import Foundation

class Comment {
    var text: String = ""
    let subject: String
    var feeling: String

    init(feeling: Double, subject: String) {
        switch feeling {
        case 0...19:
            self.feeling = "terribly"
        case 20...39:
            self.feeling = "badly"
        case 40...59:
            self.feeling = "mediocrely"
        case 60...79:
            self.feeling = "well"
        case 80...99:
            self.feeling = "amazingly"
        default:
            self.feeling = "I broke the app"
        }
        self.subject = subject
    }
    
    func generateComment() -> String {
        self.text = "I think that \(self.subject) is going \(self.feeling)."
        return self.text
    }
    
}
