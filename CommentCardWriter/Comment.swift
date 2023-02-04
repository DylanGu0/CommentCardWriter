//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import Foundation

class Comment {
    let text: String
    var isHidden: Bool

    init(comment: String) {
        self.text = comment
        self.isHidden = false        
    }
}
