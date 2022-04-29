//
//  Picker.swift
//  ExampleIssueProject1 WatchKit Extension
//
//  Created by - - on 4/29/22.
//

import SwiftUI
import SwiftUI

@available(watchOS 7.0, *)
struct NumberPicker: View {
    @State var selection: PickerOption
    let onSelection: (PickerOption) -> ()
    
    var body: some View {
        //NavigationView { // Added navigation view
            GeometryReader { geo in
                HStack {
                    Spacer()
                    Picker(selection.title, selection: $selection) {
                        ForEach(PickerOption.allCases) { option in
                            Image(uiImage: option.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    .pickerStyle(.wheel)
                    .defaultWheelPickerItemHeight(geo.size.height)
                    .frame(width: geo.size.width * 0.7)
                    Spacer()
                    
                }
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            onSelection(selection)
                        }
                    }
                }
            }
        //}
    }
}
