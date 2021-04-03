//
//  Colours.swift
//  Counter
//
//  Created by Sindushan Shanmugam on 2021-03-13.
//

import Foundation
import UIKit
import SwiftUI

enum Colours {
    case first
    case second
    case third
    case fourth
    case fifth
    case sixth
    case seventh
    case eighth
    
    var label: String{
        switch self {
//        case .first:
//            return "B"
//        case .second:
//            return "BO"
//        case .third:
//            return "W"
//        case .fourth:
//            return "WO"
//        case .fifth:
//            return "D"
//        case .sixth:
//            return "DO"
//        case .seventh:
//            return "CO"
//        case .eighth:
//            return "MT"
//        }
        case .first:
            return "French Lilac"
        case .second:
            return "Green"
        case .third:
            return "Middle Red"
        case .fourth:
            return "Sky Blue"
        case .fifth:
            return "Malachite"
        case .sixth:
            return "Key Lime"
        case .seventh:
            return "Carrot"
        case .eighth:
            return "Lava"
        }
    }
    
    var emptyTime: String{
        return "--:--"
    }
}
extension Color {
  struct FirstTheme {
    static var firstColor: Color  { return Color(red: 0.60, green: 0.37, blue: 0.60) }
    static var secondColor: Color { return Color(red: 0.00, green: 0.31, blue: 0.39) }
    static var thirdColor: Color  { return Color(red: 0.89, green: 0.52, blue: 0.43) }
    static var fourthColor: Color { return Color(red: 0.41, green: 0.87, blue: 1.00) }
    static var fifthColor: Color  { return Color(red: 0.02, green: 0.91, blue: 0.38) }
    static var sixthColor: Color { return Color(red: 0.84, green: 0.90, blue: 0.51) }
    static var seventhColor: Color  { return Color(red: 0.93, green: 0.60, blue: 0.16) }
    static var eighthColor: Color { return Color(red: 0.78, green: 0.11, blue: 0.15) }
    static var listNameColour: Color { return Color(red: 153/255, green: 181/255, blue: 181/255) }
    static var listTimeColor: Color { return Color(red: 102/255, green: 102/255, blue: 242/255) }
  }
}

extension Color {
  struct SecondTheme {
    static var firstColor: Color  { return Color(red: 0.28, green: 0.58, blue: 0.45) }
    static var secondColor: Color { return Color(red: 0.31, green: 0.64, blue: 0.49) }
    static var thirdColor: Color  { return Color(red: 0.57, green: 0.77, blue: 0.50) }
    static var fourthColor: Color { return Color(red: 0.84, green: 0.90, blue: 0.51) }
    static var fifthColor: Color  { return Color(red: 0.88, green: 0.75, blue: 0.33) }
    static var sixthColor: Color { return Color(red: 0.91, green: 0.68, blue: 0.25) }
    static var seventhColor: Color  { return Color(red: 0.93, green: 0.60, blue: 0.16) }
    static var eighthColor: Color { return Color(red: 0.85, green: 0.36, blue: 0.15) }
    static var listNameColour: Color { return Color(red: 0.82, green: 0.67, blue: 0.85) }
    static var listTimeColor: Color { return Color(red: 0.53, green: 0.80, blue: 0.95) }
  }
    /* Object
    {"Illuminating Emerald":"479473","Jungle Green":"4ea37e","Pistachio":"92c580","Key Lime":"d6e681","Maize Crayola":"e1c055","Goldenrod":"e7ad3f","Carrot Orange":"ec9a29","Flame":"da5c27"}
     */
}
