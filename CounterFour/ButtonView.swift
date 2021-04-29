//
//  ButtonView.swift
//  Counter
//
//  Created by Sindushan Shanmugam on 2021-03-13.
//

import Foundation
import SideMenu
import SwiftUI

struct ButtonView: View {
    @State var firstCount = 0
    @State var secondCount = 0
    @State var thirdCount = 0
    @State var fourthCount = 0
    @State var fifthCount = 0
    @State var sixthCount = 0
    @State var seventhCount = 0
    @State var eighthCount = 0
    @State var ninthCount = 0
    @State var time = "--:--"
    @State var itemslist = ""
    var items: FetchedResults<Item>
    @State var isItEmpty = true
    @Environment(\.managedObjectContext) private var viewContext
    @State private var birthDate = Date()
    var body: some View {
        VStack(alignment: .trailing, spacing: 5, content: {
            headerList
            dateSelector
            firstRow
            secondRow
            thirdRow
//            fifthRow
        })
    }

    func getItems() {
        let times = items.map { item in
            item.timestamp
        }
        var stringDate = ""
        let formatter4 = DateFormatter()
        formatter4.dateFormat = "HH:mm E, d MMM y"

        times.forEach { time in
            stringDate = stringDate + " " + formatter4.string(from: time!)
        }
        itemslist = stringDate
    }

    var headerList: some View {
        List {
            if isItEmpty { ForEach(items) { item in
                HStack {
                    Button(action: setTime, label: {
                        Text("\(item.colour!)").font(.headline)
                    }).padding(0.5).buttonStyle(BlackCapsuleButton(bgColor: item.colour!))
                    Button(action: setTime, label: {
                        Text("\(item.timestamp!, formatter: itemFormatter)").font(.footnote)
                    }).padding(0.5).buttonStyle(BlackCapsuleButton(bgColor: item.colour!))
                }
            }
            .onDelete(perform: deleteItems)
            }
        }
    }

    var dateSelector: some View {
        HStack {
            Spacer()
            Spacer()
            DatePicker(selection: $birthDate, in: ...Date().addingTimeInterval(86400), displayedComponents: [.date, .hourAndMinute]) {
                Text("Please select a date").font(.headline)
            }
        }
    }

    var firstColour: some View {
        ZStack(alignment: .center) {
            Capsule().foregroundColor(Color.SecondTheme.firstColor)
            HStack() {
                Button(action: { addFirstItem() }) {
                Text("\(Colours.first.label)").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.firstColor).cornerRadius(50)
                Divider()
                Button(action: { addFirstItem() }) {
                Text("\(getFirstEntryCount())").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.firstColor).cornerRadius(50)
            }
        }.padding().frame(width: 120, height: 90)
//        HStack {
//            Button(action: addFirstItem, label: {
//                Text("\(Colours.first.label)").font(.headline)
//            }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.firstColor))
//
//            Button(action: addFirstItem, label: {
//                Text("\(getFirstEntryCount())").font(.headline)
//            }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.firstColor))
//        }
    }

    var secondColour: some View {
        ZStack(alignment: .center) {
            Capsule().foregroundColor(Color.SecondTheme.secondColor)
            HStack() {
                Button(action: { addSecondItem() }) {
                Text("\(Colours.second.label)").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.secondColor).cornerRadius(50)
                Divider()
                Button(action: { addSecondItem() }) {
                Text("\(getSecondEntryCount())").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.secondColor).cornerRadius(50)
            }
        }.padding().frame(width: 120, height: 90)
//        HStack {
//            Button(action: addSecondItem, label: {
//                Text("\(Colours.second.label)").font(.headline)
//            }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.secondColor))
//
//            Button(action: addSecondItem, label: {
//                Text("\(getSecondEntryCount())").font(.headline)
//            }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.secondColor))
//        }
    }

    var thirdColour: some View {
        ZStack(alignment: .center) {
            Capsule().foregroundColor(Color.SecondTheme.thirdColor)
            HStack() {
                Button(action: { addThirdItem() }) {
                Text("\(Colours.third.label)").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.thirdColor).cornerRadius(50)
                Divider()
                Button(action: { addThirdItem() }) {
                Text("\(getThirdEntryCount())").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.thirdColor).cornerRadius(50)
            }
        }.padding().frame(width: 120, height: 90)
//        HStack {
//            Button(action: addThirdItem, label: {
//                Text("\(Colours.third.label)").font(.headline)
//            }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.thirdColor))
//
//            Button(action: addThirdItem, label: {
//                Text("\(getThirdEntryCount())").font(.headline)
//            }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.thirdColor))
//        }
    }

    var fourthColour: some View {
        ZStack(alignment: .center) {
            Capsule().foregroundColor(Color.SecondTheme.fourthColor)
            HStack() {
                Button(action: { addFourthItem() }) {
                Text("\(Colours.fourth.label)").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.fourthColor).cornerRadius(50)
                Divider()
                Button(action: { addEigthItem() }) {
                Text("\(getFourthEntryCount())").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.fourthColor).cornerRadius(50)
            }
        }.padding().frame(width: 120, height: 90)
//        HStack {
//            Button(action: addFourthItem, label: {
//                Text("\(Colours.fourth.label)").font(.headline)
//            }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.fourthColor))
//
//            Button(action: addFourthItem, label: {
//                Text("\(getFourthEntryCount())").font(.headline)
//            }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.fourthColor))
//        }
    }

    var fifthColour: some View {
        ZStack(alignment: .center) {
            Capsule().foregroundColor(Color.SecondTheme.fifthColor)
            HStack() {
                Button(action: { addFifthItem() }) {
                Text("\(Colours.fifth.label)").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.fifthColor).cornerRadius(50)
                Divider()
                Button(action: { addFifthItem() }) {
                Text("\(getFifthEntryCount())").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.fifthColor).cornerRadius(50)
            }
        }.padding().frame(width: 120, height: 90)
//        HStack {
//            Button(action: addFifthItem, label: {
//                Text("\(Colours.fifth.label)").font(.headline)
//            }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.fifthColor))
//
//            Button(action: addFifthItem, label: {
//                Text("\(getFifthEntryCount())").font(.headline)
//            }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.fifthColor))
//        }
    }

    var sixthColour: some View {
        ZStack(alignment: .center) {
            Capsule().foregroundColor(Color.SecondTheme.sixthColor)
            HStack() {
                Button(action: { addSixthItem() }) {
                Text("\(Colours.sixth.label)").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.sixthColor).cornerRadius(50)
                Divider()
                Button(action: { addSixthItem() }) {
                Text("\(getSixthEntryCount())").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.sixthColor).cornerRadius(50)
            }
        }.padding().frame(width: 120, height: 90)
//        HStack {
//            Button(action: addSixthItem, label: {
//                Text("\(Colours.sixth.label)").font(.headline)
//            }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.sixthColor))
//
//            Button(action: addSixthItem, label: {
//                Text("\(getSixthEntryCount())").font(.headline)
//            }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.sixthColor))
//        }
    }

    var seventhColour: some View {
        ZStack(alignment: .center) {
            Capsule().foregroundColor(Color.SecondTheme.seventhColor)
            HStack() {
                Button(action: { addSeventhItem() }) {
                Text("\(Colours.seventh.label)").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.seventhColor).cornerRadius(50)
                Divider()
                Button(action: { addSeventhItem() }) {
                Text("\(getSeventhEntryCount())").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.seventhColor).cornerRadius(50)
            }
        }.padding().frame(width: 120, height: 90)
//        HStack {
//            Button(action: addSeventhItem, label: {
//                Text("\(Colours.seventh.label)").font(.headline)
//            }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.seventhColor))
//
//            Button(action: addSeventhItem, label: {
//                Text("\(getSeventhEntryCount())").font(.headline)
//            }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.seventhColor))
//        }
    }

    var eighthColour: some View {
        ZStack(alignment: .center) {
            Capsule().foregroundColor(Color.SecondTheme.eighthColor)
            HStack() {
                Button(action: { addEigthItem() }) {
                Text("\(Colours.ninth.label)").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.eighthColor).cornerRadius(50)
                Divider()
                Button(action: { addEigthItem() }) {
                Text("\(getNinthEntryCount())").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.eighthColor).cornerRadius(50)
            }
        }.padding().frame(width: 120, height: 90)
        
//        HStack {
//            Button(action: addEigthItem, label: {
//                Text("\(Colours.eighth.label)").font(.headline)
//            }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.eighthColor))
//
//            Button(action: addEigthItem, label: {
//                Text("\(getEighthEntryCount())").font(.headline)
//            }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.eighthColor))
//        }
    }

    var ninthColour: some View {
        
        ZStack(alignment: .center) {
            Capsule().foregroundColor(Color.SecondTheme.ninthColor)
            HStack() {
                Button(action: { addNinthItem() }) {
                Text("\(Colours.ninth.label)").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.ninthColor).cornerRadius(50)
                Divider()
                Button(action: { addNinthItem() }) {
                Text("\(getNinthEntryCount())").foregroundColor(.white).font(.system(size: 18))
                }.frame(width: 40, height: 40)
                .background(Color.SecondTheme.ninthColor).cornerRadius(50)
            }
        }.padding().frame(width: 120, height: 90)
        
//        HStack {
//            Button(action: addNinthItem, label: {
//                Text("\(Colours.ninth.label)").font(.headline)
//            }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.ninthColor))
//
//            Button(action: addNinthItem, label: {
//                Text("\(getNinthEntryCount())").font(.headline)
//            }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.ninthColor))
//        }
    }

    var firstRow: some View {
        
        HStack(alignment: .center, spacing: 15) {
            firstColour
            secondColour
            thirdColour
        }
    }

    var secondRow: some View {
        HStack(alignment: .center, spacing: 15) {
            fourthColour
            fifthColour
            sixthColour
        }
    }

    var thirdRow: some View {
        HStack(alignment: .center, spacing: 12) {
            seventhColour
            eighthColour
            ninthColour
        }
    }

    var fourthRow: some View {
        VStack {
            HStack {
                Button(action: getItems, label: {
                    Text("GENERATE").font(.headline)
                }).padding(0.5)
                TextEditor(text: $itemslist)
            }
        }
    }

    var fifthRow: some View {
        HStack {}
    }

    func addFirstItem() {
        addItem(colour: .first)
        firstIncrement()
    }

    func addSecondItem() {
        addItem(colour: .second)
        secondIncrement()
    }

    func addThirdItem() {
        addItem(colour: .third)
        thirdIncrement()
    }

    func addFourthItem() {
        addItem(colour: .fourth)
        fourthIncrement()
    }

    func addFifthItem() {
        addItem(colour: .fifth)
        fifthIncrement()
    }

    func addSixthItem() {
        addItem(colour: .sixth)
        sixthIncrement()
    }

    func addSeventhItem() {
        addItem(colour: .seventh)
        seventhIncrement()
    }

    func addEigthItem() {
        addItem(colour: .eighth)
        eigthIncrement()
    }

    func addNinthItem() {
        addItem(colour: .ninth)
        ninthIncrement()
    }

    func getDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E MMM d h:mm a"
        return
            dateFormatter.string(from: Date())
    }

    func addItem(colour: Colours) {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = birthDate
            newItem.colour = colour.label
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .short
        return formatter
    }()

    private func getFirstEntryCount() -> Int {
        return getEntryCountFor(.first)
    }

    private func getSecondEntryCount() -> Int {
        return getEntryCountFor(.second)
    }

    private func getThirdEntryCount() -> Int {
        return getEntryCountFor(.third)
    }

    private func getFourthEntryCount() -> Int {
        return getEntryCountFor(.fourth)
    }

    private func getFifthEntryCount() -> Int {
        return getEntryCountFor(.fifth)
    }

    private func getSixthEntryCount() -> Int {
        return getEntryCountFor(.sixth)
    }

    private func getSeventhEntryCount() -> Int {
        return getEntryCountFor(.seventh)
    }

    private func getEighthEntryCount() -> Int {
        return getEntryCountFor(.eighth)
    }

    private func getNinthEntryCount() -> Int {
        return getEntryCountFor(.ninth)
    }

    func firstIncrement() {
        firstCount += 1
        time = getDate()
    }

    func secondIncrement() {
        secondCount += 1
        time = getDate()
    }

    func thirdIncrement() {
        thirdCount += 1
        time = getDate()
    }

    func fourthIncrement() {
        fourthCount += 1
        time = getDate()
    }

    func fifthIncrement() {
        fifthCount += 1
        time = getDate()
    }

    func sixthIncrement() {
        sixthCount += 1
        time = getDate()
    }

    func seventhIncrement() {
        seventhCount += 1
        time = getDate()
    }

    func eigthIncrement() {
        eighthCount += 1
        time = getDate()
    }

    func ninthIncrement() {
        ninthCount += 1
        time = getDate()
    }

    private func setTime() {
        time = itemFormatter.string(from: items[items.endIndex - 1].timestamp ?? Date())
    }

    func timeDiff(colour: Colours) -> Int {
        let firstIndex = items.firstIndex(where: { $0.colour == colour.label }) ?? 0
        let lastIndex = items.lastIndex(where: { $0.colour == colour.label }) ?? 0
        if firstIndex != lastIndex {
            let diffComponents = Calendar.current.dateComponents([.hour], from: items[lastIndex].timestamp!, to: items[firstIndex].timestamp!)
            let days = diffComponents.hour! / 24
            return days
        }
        return 0
    }

    func getItemsArray() -> [String] {
        let arrayColours = items.map { item in
            item.colour!
        }
        return arrayColours
    }

    private func getEntryCountFor(_ colour: Colours) -> Int {
        let array = getItemsArray()
        let dictionary = array.reduce(into: [:]) { counts, colour in
            counts[colour, default: 0] += 1
        }
        if let val = dictionary[colour.label] {
            return val
        }
        return 0
    }
}

// struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
// }
