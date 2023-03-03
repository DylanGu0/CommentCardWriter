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
    @State private var selectedDivision : String = "CComX-1 - DPC"
    let divisions = Divisions()
    
    var body: some View {
        Form {
            Section {
                Picker("Select the division", selection: $selectedDivision) {
                    ForEach(divisions.keys, id: \.self) { // How do i make it so it sets selectedDivision to a different thing other than the things in the picker
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
                    if !isHidden {
                        Text("\(comment)")
                            .frame(width: 350)
                    } else {
                        Text("Comment will be generated here...")
                            .frame(width: 350)
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
                    .frame(width: 350)
            }
            
            Section {
                    Button("Save", action: {})
                    Button("View Previous", action: {
                        NavigationLink("View saved comments") {
                            PreviousCommentsView()
                        }
                    })
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
