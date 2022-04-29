//
//  PickerOption.swift
//  ExampleIssueProject1 WatchKit Extension
//
//  Created by - - Mehmen on 4/29/22.
//

import Foundation
import SwiftUI

public enum PickerOption: String, Hashable, CaseIterable, Codable, Identifiable {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    
    public var id: Self { self }
    
    var title: String {
        switch self {
        case .one:
            return "title for one"
        case .two:
            return "title for two"
        case .three:
            return "title for three"
        case .four:
            return "title for four"
        case .five:
            return "title for five"
        case .six:
            return "title for six"
        case .seven:
            return "title for seven"
        }
    }
    
    public var image: UIImage {
        switch self {
        case .one:
            return UIImage(named: "one-image")!
        case .two:
            return UIImage(named: "two-image")!
        case .three:
            return UIImage(named: "three-image")!
        case .four:
            return UIImage(named: "four-image")!
        case .five:
            return UIImage(named: "five-image")!
        case .six:
            return UIImage(named: "six-image")!
        case .seven:
            return UIImage(named: "seven-image")!
        }
    }
}
