//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderFeeling = 50.0
    @State private var isHidden: Bool = true
    @State private var comment: String = ""
    @State private var subject: String = ""
    @State private var buttonName: String = "Generate Comment"
    @State private var selectedDivision : String
    let divisions = Divisions().divisions
    
    var body: some View {
        Form {
            Section {
                Picker("Select the division", selection: $selectedDivision) {
                    ForEach(divisions, id: \.self) {
                        Text("\($0)")
                    }
                }
            }
            Section(header: Text("How much are you enjoying \(subject)")) {
                Slider(value: $sliderFeeling, in: 0...99)
            }
            
            Section() {
                VStack(alignment: .center) {
                    Section {
                        if !isHidden {
                            Text("\(comment)")
                        } else {
                            Text("Comment will be generated here...")
                        }
                    }
                    
                    Section {
                        Button(buttonName, action: {
                            let comment = Comment(feeling: sliderFeeling, subject: "Maths")
                            self.comment = comment.generateComment()
                            isHidden.toggle()
                            if isHidden {
                                buttonName = "Generate Comment"
                            } else {
                                buttonName = "Delete Comment"
                            }
                        })
                    }
                }
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
