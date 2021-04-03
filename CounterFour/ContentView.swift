//
//  ContentView.swift
//  CounterFour
//
//  Created by Sindushan Shanmugam on 2021-03-14.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: false)],
        animation: .default)
    var items: FetchedResults<Item>
    var body: some View {
        ButtonView( items: items)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    var pops: FetchedResults<Pop>
//    static var previews: some View {
//        ContentView( pops: pops).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
