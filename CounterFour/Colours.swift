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
        /* Object
        {"Illuminating Emerald":"479473","Jungle Green":"4ea37e","Pistachio":"92c580","Key Lime":"d6e681","Maize Crayola":"e1c055","Goldenrod":"e7ad3f","Carrot Orange":"ec9a29","Flame":"da5c27"}
         */
        case .first:
            return "Emerald"
        case .second:
            return "Jungle"
        case .third:
            return "Pistachio"
        case .fourth:
            return "Lime"
        case .fifth:
            return "Maize"
        case .sixth:
            return "Golrod"
        case .seventh:
            return "Carrot"
        case .eighth:
            return "Flame"
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
  struct ThirdTheme {
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
}

extension Color {
  struct SecondTheme {
    //["05827d","058f8a","059d98","06ada7","07beb8","3dccc7","68d8d6","9ceaef"]
    static var firstColor: Color  { return Color(red: 0.0196, green: 0.5098, blue: 0.4902) }
    static var secondColor: Color { return Color(red: 0.0196, green: 0.5608, blue: 0.5412) }
    static var thirdColor: Color  { return Color(red: 0.0196, green: 0.6157, blue: 0.5961) }
    static var fourthColor: Color { return Color(red: 0.0235, green: 0.6784, blue: 0.6549) }
    static var fifthColor: Color  { return Color(red: 0.0275, green: 0.7451, blue: 0.7216) }
    static var sixthColor: Color { return Color(red: 0.2392, green: 0.8, blue: 0.7804) }
    static var seventhColor: Color  { return Color(red: 0.4078, green: 0.8471, blue: 0.8392) }
    static var eighthColor: Color { return Color(red: 0.6118, green: 0.9176, blue: 0.9373) }
    static var listNameColour: Color { return Color(red: 0.0392, green: 0.2118, blue: 0.6157) }
    static var listTimeColor: Color { return Color(red: 0.3686, green: 0.4863, blue: 0.8863) }
  }
}
