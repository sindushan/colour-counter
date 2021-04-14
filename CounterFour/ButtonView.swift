//
//  ButtonView.swift
//  Counter
//
//  Created by Sindushan Shanmugam on 2021-03-13.
//

import Foundation
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
    @State var time = "--:--"
    var items: FetchedResults<Item>
    @State var isItEmpty = true
    @Environment(\.managedObjectContext) private var viewContext
    @State private var birthDate = Date()
    var body: some View {
        List {
            if(isItEmpty){ForEach(items) { item in
                HStack{
                    Button(action: setTime, label: {
                    Text("\(item.colour!)").font(.headline)
                    }).padding(0.5).buttonStyle(BlackCapsuleButton(bgColor: Color.SecondTheme.listNameColour))
                    Spacer()
                    Button(action: setTime, label: {
                    Text("\(item.timestamp!, formatter: itemFormatter)").font(.headline)
                    }).padding(0.5).buttonStyle(BlackCapsuleButton(bgColor: Color.SecondTheme.listTimeColor))
                }
            }
            .onDelete(perform: deleteItems)}
        }
        HStack{
            Spacer()
            Spacer()
            DatePicker(selection: $birthDate, in: ...Date().addingTimeInterval(86400), displayedComponents: [.date, .hourAndMinute]) {
                Text("Please select a date").font(.headline)
            }
        }
        VStack(alignment: .trailing, spacing: 15, content: {
            
            
            HStack{
                Spacer()
                Button(action: addFirstItem, label: {
                    Text("\(getFirstEntryCount())").font(.headline)
                }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.firstColor))
                
                HStack
                {
                    Spacer()
                    Button(action: addFirstItem, label: {
                    Text("\(Colours.first.label)").font(.headline)
                    }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.firstColor))
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button(action: addSecondItem, label: {
                        Text("\(getSecondEntryCount())").font(.headline)
                    }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.secondColor))
                    
                    HStack
                    {
                        Spacer()
                        Button(action: addSecondItem, label: {
                            Text("\(Colours.second.label)").font(.headline)
                        }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.secondColor))
//                        Spacer()
                    }
                }
                
            }
            

            HStack{
                Spacer()
                Button(action: addThirdItem, label: {
                    Text("\(getThirdEntryCount())").font(.headline)
                }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.thirdColor))
                
                HStack{
                    Spacer()
                    Button(action: addThirdItem, label: {
                        Text("\(Colours.third.label)").font(.headline)
                    }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.thirdColor))
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button(action: addFourthItem, label: {
                    Text("\(getFourthEntryCount())").font(.headline)
                    }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.fourthColor))
                    
                    HStack{
                        Spacer()
                        Button(action: addFourthItem, label: {
                        Text("\(Colours.fourth.label)").font(.headline)
                        }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.fourthColor))
//                        Spacer()
                    }
                }
            }
            
            HStack{
                Spacer()
                Button(action: addFifthItem, label: {
                Text("\(getFifthEntryCount())").font(.headline)
                }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.fifthColor))
                
                HStack{
                    Spacer()
                    Button(action: addFifthItem, label: {
                    Text("\(Colours.fifth.label)").font(.headline)
                    }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.fifthColor))
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button(action: addSixthItem, label: {
                    Text("\(getSixthEntryCount())").font(.headline)
                    }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.sixthColor))
                    
                    HStack{
                        Spacer()
                        Button(action: addSixthItem, label: {
                        Text("\(Colours.sixth.label)").font(.headline)
                        }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.sixthColor))
//                        Spacer()
                    }
                }
            }
            
            HStack{
                Spacer()
                Button(action: addSeventhItem, label: {
                Text("\(getSeventhEntryCount())").font(.headline)
                }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.seventhColor))
                
                HStack{
                    Spacer()
                    Button(action: addSeventhItem, label: {
                    Text("\(Colours.seventh.label)").font(.headline)
                    }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.seventhColor))
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button(action: addEigthItem, label: {
                    Text("\(getEighthEntryCount())").font(.headline)
                    }).padding(0.5).buttonStyle(EllipseButton(bgColor: Color.SecondTheme.eighthColor))
                    
                    HStack{
                        Spacer()
                        Button(action: addEigthItem, label: {
                        Text("\(Colours.eighth.label)").font(.headline)
                        }).padding(0.5).buttonStyle(CapsuleButton(bgColor: Color.SecondTheme.eighthColor))
//                        Spacer()
                    }
                }
            }
            
            })
    }
    func firstIncrement() {
        firstCount+=1
        time=getDate()
    }
    func secondIncrement(){
        secondCount+=1
        time=getDate()
    }
    func thirdIncrement(){
        thirdCount+=1
        time=getDate()
    }
    func fourthIncrement(){
        fourthCount+=1
        time=getDate()
    }
    func fifthIncrement(){
        fifthCount+=1
        time=getDate()
    }
    func sixthIncrement(){
        sixthCount+=1
        time=getDate()
    }
    func seventhIncrement(){
        seventhCount+=1
        time=getDate()
    }
    func eigthIncrement(){
        eighthCount+=1
        time=getDate()
    }
    func getDate() -> String{
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
    func addFirstItem(){
        addItem(colour: .first)
        firstIncrement()
    }
    func addSecondItem(){
        addItem(colour: .second)
        secondIncrement()
    }
    func addThirdItem(){
        addItem(colour: .third)
        thirdIncrement()
    }
    func addFourthItem(){
        addItem(colour: .fourth)
        fourthIncrement()
    }
    func addFifthItem(){
        addItem(colour: .fifth)
        fifthIncrement()
    }
    func addSixthItem(){
        addItem(colour: .sixth)
        sixthIncrement()
    }
    func addSeventhItem(){
        addItem(colour: .seventh)
        seventhIncrement()
    }
    func addEigthItem(){
        addItem(colour: .eighth)
        eigthIncrement()
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
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }()
    private func getFirstEntryCount() -> Int{
        return getEntryCountFor(.first)
    }
    private func getSecondEntryCount() -> Int{
        return getEntryCountFor(.second)
    }
    private func getThirdEntryCount() -> Int{
        return getEntryCountFor(.third)
    }
    private func getFourthEntryCount() -> Int{
        return getEntryCountFor(.fourth)
    }
    private func getFifthEntryCount() -> Int{
        return getEntryCountFor(.fifth)
    }
    private func getSixthEntryCount() -> Int{
        return getEntryCountFor(.sixth)
    }
    private func getSeventhEntryCount() -> Int{
        return getEntryCountFor(.seventh)
    }
    private func getEighthEntryCount() -> Int{
        return getEntryCountFor(.eighth)
    }
    private func setTime(){
        time = itemFormatter.string(from: items[items.endIndex-1].timestamp ?? Date())
    }
    func timeDiff(colour: Colours) -> Int {
        let firstIndex = items.firstIndex(where: { $0.colour == colour.label}) ?? 0
        let lastIndex = items.lastIndex(where: { $0.colour == colour.label}) ?? 0
        if(firstIndex != lastIndex)
        {
            let diffComponents = Calendar.current.dateComponents([.hour], from: items[lastIndex].timestamp!, to: items[firstIndex].timestamp!)
            let days = diffComponents.hour! / 24
            return days
        }
        return 0
    }
    func getItemsArray() -> [String]{
        let arrayColours = items.map({ item in
            item.colour!
        })
        return arrayColours
    }
    private func getEntryCountFor(_ colour: Colours) -> Int{
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


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
