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
    @State private var selectedDivision : String = "this lesson"
    let divisions = Divisions().keys
    
    var body: some View {
        Form {
            Section {
                Picker("Select the division", selection: $selectedDivision) {
                    ForEach(divisions, id: \.self) { // How do i make it so it sets selectedDivision to a different thing other than te things in the picker
                        Text("\($0)")
                    }
                }
                .pickerStyle(.wheel)
                .clipped()
                .frame(height: 150)
            }
            Section(header: Text("How much are you enjoying \(selectedDivision)")) {
                Slider(value: $sliderFeeling, in: 0...99)
            }
            
            Section() {
                VStack(alignment: .center) {
                    Section {
                        if !isHidden {
                            Text("\(comment)")
                                .frame(width: 310)
                        } else {
                            Text("Comment will be generated here...")
                                .frame(width: 310)
                        }
                    }
                    
                    Section {
                        Button(buttonName, action: {
                            let comment = Comment(feeling: sliderFeeling, subject: selectedDivision)
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
