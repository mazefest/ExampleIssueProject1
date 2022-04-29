//
//  ContentView.swift
//  ExampleIssueProject1 WatchKit Extension
//
//  Created by - - on 4/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedOption = PickerOption.three
    @State var showingPicker = false
    
    private enum menuItemSelected {
        case numberPicker
    }
    
    @State private var menuSelection: menuItemSelected?
    
    var body: some View {
        NavigationView {
        List {
            Section {
                NavigationLink(destination: numberSelectionView, tag: .numberPicker, selection: $menuSelection) {
                    Text("Selection: \(selectedOption.rawValue)")
                }
            }
        }
        }
    }
    
    var numberSelectionView: some View {
        return NumberPicker(selection: selectedOption) { newSelection in
            self.selectedOption = newSelection
            self.menuSelection = nil
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
