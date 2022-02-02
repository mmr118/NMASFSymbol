//
//  ContentView.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import SwiftUI
import CoreData
import NMASFSymbol

struct ContentView<T: SFSCollectionProtocol>: View {

    var collection: T
    lazy var symbols = collection.symbols()


    var body: some View {
        VStack {
            HStack {
                VStack {
                    let symbol = collection.symbols().first!
                    Image(systemName: symbol.name)
                        .font(.system(size: 100))
                        .scaledToFit()
                        .background(Color.red)
                        .frame(width: 100, height: 100)

                    Text(symbol.name)

                }
            }
        }


    }
    /*

     @Environment(\.managedObjectContext) private var viewContext

     @FetchRequest(
     sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
     animation: .default)
     private var items: FetchedResults<Item>

     var body: some View {
     NavigationView {
     List {
     ForEach(items) { item in
     NavigationLink {
     Text("Item at \(item.timestamp!, formatter: itemFormatter)")
     } label: {
     Text(item.timestamp!, formatter: itemFormatter)
     }
     }
     .onDelete(perform: deleteItems)
     }
     .toolbar {
     ToolbarItem(placement: .navigationBarTrailing) {
     EditButton()
     }
     ToolbarItem {
     Button(action: addItem) {
     Label("Add Item", systemImage: "plus")
     }
     }
     }
     Text("Select an item")
     }
     }

     private func addItem() {
     withAnimation {
     let newItem = Item(context: viewContext)
     newItem.timestamp = Date()

     do {
     try viewContext.save()
     } catch {
     // Replace this implementation with code to handle the error appropriately.
     // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
     let nsError = error as NSError
     fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
     }
     }
     }

     private func deleteItems(offsets: IndexSet) {
     withAnimation {
     offsets.map { items[$0] }.forEach(viewContext.delete)

     do {
     try viewContext.save()
     } catch {
     // Replace this implementation with code to handle the error appropriately.
     // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
     let nsError = error as NSError
     fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
     }
     }
     }
     }

     private let itemFormatter: DateFormatter = {
     let formatter = DateFormatter()
     formatter.dateStyle = .short
     formatter.timeStyle = .medium
     return formatter
     }()
     */

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            let collection = SFSSystemCollection.devices
            ContentView(collection: collection) // .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
