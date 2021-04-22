//
//  ColourCard.swift
//  CounterFour
//
//  Created by Sindushan Shanmugam on 2021-03-21.
//

import Foundation
import SwiftUI
let CandyAppleRed = Color(red: 0.8863, green: 0.2549, blue: 0.1451)
let OriolesOrange = Color(red: 0.898, green: 0.3804, blue: 0.1647)
let Beer = Color(red: 0.9098, green: 0.5059, blue: 0.1843)
let Saffron = Color(red: 0.9255, green: 0.6275, blue: 0.2078)
let Brass = Color(red: 0.9373, green: 0.7529, blue: 0.2275)
let Apple = Color(red: 0.949, green: 0.8784, blue: 0.2471)
struct ColourCard {
    // GET NTH COLOUR ----------------------------
    func getFirstColouredItem(items: [Item]) -> Item {
        return items.first!
    }

    func getSecondColour(items: [Item]) -> String {
        // get second colour
        let firstColouredItem = getFirstColouredItem(items: items)
        let itemsto = items
        if firstColouredItem.colour != "" {
            for item in itemsto {
                if item.colour != firstColouredItem.colour {
                    return item.colour!
                }
            }
        }
        return ""
    }

    func getThirdColour(items: [Item]) -> String {
        let itemsTo = items
        let secondItemColour = getSecondColour(items: itemsTo)
        if secondItemColour != "" {
            // get the first index of the second colour then start loop from there
            let index = itemsTo.firstIndex(where: { $0.colour == secondItemColour }) ?? 0
            return getNthColourWithin(index: index, itemCount: itemsTo.count, colour: secondItemColour, items: itemsTo)
        }
        return ""
    }

    func getFourthColour(items: [Item]) -> String {
        let itemsTo = items
        let thirdItemColour = getThirdColour(items: itemsTo)
        if thirdItemColour != "" {
            let index = itemsTo.firstIndex(where: { $0.colour == thirdItemColour }) ?? 0
            return getNthColourWithin(index: index, itemCount: itemsTo.count, colour: thirdItemColour, items: itemsTo)
        }
        return ""
    }

    func getFifthColour(items: [Item]) -> String {
        let itemsTo = items
        let fourthItemColour = getFourthColour(items: itemsTo)
        if fourthItemColour != "" {
            let index = itemsTo.firstIndex(where: { $0.colour == fourthItemColour }) ?? 0
            return getNthColourWithin(index: index, itemCount: itemsTo.count, colour: fourthItemColour, items: itemsTo)
        }
        return ""
    }

    func getSixthColour(items: [Item]) -> String {
        let itemsTo = items
        let fifthItemColour = getFifthColour(items: itemsTo)
        if fifthItemColour != "" {
            let index = itemsTo.firstIndex(where: { $0.colour == fifthItemColour }) ?? 0
            return getNthColourWithin(index: index, itemCount: itemsTo.count, colour: fifthItemColour, items: itemsTo)
        }
        return ""
    }

    func getNthColourWithin(index: Int, itemCount: Int, colour: String, items: [Item]) -> String {
        let itemsTo = items
        if itemCount >= index {
            for i in index ..< itemCount {
                if itemsTo[i].colour != colour {
                    return itemsTo[i].colour!
                }
            }
        }
        return ""
    }

    func getFirstIndexFor(colour: Colours, items: [Item]) -> Int {
        let count = items.count
        if count > -1 {
            var index = items.firstIndex(where: { $0.colour == colour.label }) ?? -1
            return index
        }
        return -1
    }

    func getCount(_ colour: Colours, items: [String]) -> Int {
//        var counter = 0
//        for item in items{
//            if item == colour.label{
//                counter+=1
//            }
//        }
//        let counter = items.filter{$0 == colour.label}.count

        return items.filter { $0 == colour.label }.count
    }

    private func getBlackEntryCount(items: [String]) -> Int {
        return getCount(.first, items: items)
    }

    private func getBlackOpsEntryCount(items: [String]) -> Int {
        return getCount(.second, items: items)
    }

    private func getWhiteEntryCount(items: [String]) -> Int {
        return getCount(.third, items: items)
    }

    private func getWhiteOpsEntryCount(items: [String]) -> Int {
        return getCount(.fourth, items: items)
    }

    private func getDimEntryCount(items: [String]) -> Int {
        return getCount(.fifth, items: items)
    }

    private func getDimOpsEntryCount(items: [String]) -> Int {
        return getCount(.sixth, items: items)
    }

    private func getClrOpsEntryCount(items: [String]) -> Int {
        return getCount(.seventh, items: items)
    }

    private func getMatuEntryCount(items: [String]) -> Int {
        return getCount(.eighth, items: items)
    }
}
