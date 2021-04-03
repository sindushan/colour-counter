//
//  Colours.swift
//  Counter
//
//  Created by Sindushan Shanmugam on 2021-03-13.
//

import Foundation
import UIKit
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
        case .first:
            return "B"
        case .second:
            return "BO"
        case .third:
            return "W"
        case .fourth:
            return "WO"
        case .fifth:
            return "D"
        case .sixth:
            return "DO"
        case .seventh:
            return "CO"
        case .eighth:
            return "MT"
        }
    }
    
    var emptyTime: String{
        return "--:--"
    }
}
extension UIColor {
  struct FirstTheme {
    static var firstColor: UIColor  { return UIColor(red: 0.60, green: 0.37, blue: 0.60, alpha: 1.00) }
    static var secondColor: UIColor { return UIColor(red: 0.00, green: 0.31, blue: 0.39, alpha: 1.00) }
    static var thirdColor: UIColor  { return UIColor(red: 0.89, green: 0.52, blue: 0.43, alpha: 1.00) }
    static var fourthColor: UIColor { return UIColor(red: 0.41, green: 0.87, blue: 1.00, alpha: 1.00) }
    static var fifthColor: UIColor  { return UIColor(red: 0.02, green: 0.91, blue: 0.38, alpha: 1.00) }
    static var sixthColor: UIColor { return UIColor(red: 0.84, green: 0.90, blue: 0.51, alpha: 1.00) }
    static var seventhColor: UIColor  { return UIColor(red: 0.93, green: 0.60, blue: 0.16, alpha: 1.00) }
    static var eighthColor: UIColor { return UIColor(red: 0.78, green: 0.11, blue: 0.15, alpha: 1.00) }
  }
}
