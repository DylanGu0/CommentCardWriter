//
//  Divisions.swift
//  CommentCardWriter
//
//  Created by Guo, Dylan (Coll) on 24/02/2023.
//

import Foundation

class Divisions {
    let subjects: [String: String] = ["CComX-1 - DPC": "Computer Science", "CComX-1 - MC": "Computer Science", "CMdpW-1 - MJS": "Pure Maths", "CMdaY-1 - JT": "Applied Maths"]
    var keys: [String] = []
    var subject: String = ""
    
    init() {
        for subject in subjects.keys {
            self.keys.append(subject)
        }
    }
}
