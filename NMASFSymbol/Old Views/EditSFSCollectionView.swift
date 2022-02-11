//
//  EditSFSCollectionView.swift
//  NMASFSymbolDemoApp
//
//  Created by Monica Rondón on 2/9/22.
//

/*
import SwiftUI
import NMASFSymbol

class SFSCollectionModel: ObservableObject {
    
    @Environment(\.managedObjectContext) private var context
    
    @Published var title: String
    @Published var defaultSymbol: SFSymbol
    @Published var symbols: [SFSymbol]
    @Published var isPersisted: Bool
    
    private var collection: SFSCollection?
    
    init() {
        self.isPersisted = false
        self.title = SFSCollectionData.defaultTitle
        self.defaultSymbol = SFSCollectionData.defaultSymbol
        self.symbols = SFSCollectionData.defaultSymbols
        self.collection = nil
    }
    
    init(collection: SFSCollection, isPersisted: Bool) {
        self.isPersisted = isPersisted
        self.title = collection.title
        self.defaultSymbol = collection.defaultSymbol
        self.symbols = collection.symbols()
        self.collection = collection
    }
    
    func handleSave() {
        if let collection = collection {
            updateCollection(collection)
        } else {
            createCollection()
        }
        
    }
    
    func handleCancel() { } // no-op
    
    func handleDelete() {
        
        if let collection = collection {
        
            if let dataObjectId = SFSCollection.collectionToObjectIdDict[collection] {
            
                if let dataObject = context.object(with: dataObjectId) as? SFSCollectionData {
                    context.delete(dataObject)
                    PersistenceController.save(context)
                
                } else {
                    llog.warn("Delete aborted: Context did not contain loaded object ID")
                }
            
            } else {
                llog.warn("Delete aborted: Attempted to delelete collection whose object ID is not in loadedDict")
            }
        
        } else {
            llog.warn("Delete aborted: Attempted to delelete collection that has not be initiated")
        }
        
    }
    
    func handlePersistToggled() {
        // should persist --> should not persist
        //  - Move from loadedCache to cache (will delete on shut down)
        //
        //  ? save immidietly
        //  ? cache and bulk save at some point
        //
        
        // should not persist --> should persist
        //  - Save data
        //  - ? move from cache to loaded
        //
    }
    
    private func persistCollection() {
        
        guard let collection = collection else { llog.stop() }
        
        SFSCollection.add(collection, to: SFSCollection.loadedCache)
        
        // save now or save loaded later?
        
        // saving NOW, for now
        // not sure if this is right?
        let _ = SFSCollection.collectionToObjectIdDict[collection] ?? SFSCollectionData(context: context, collection: collection)
        PersistenceController.save(context)
    }
    
    private func unpersistCollection() {
        // TODO
    }
    

    
    private func createCollection() {
        
        let collection = SFSCollection(title: title, defaultSymbol: defaultSymbol, symbols: symbols)
        
        if isPersisted {
            // add to context
            
            // cache to loaded
            collection.cache(in: SFSCollection.loadedCache)
        }
    }
    
    private func updateCollection(_ collection: SFSCollection) {
        
        var hasChanges = false
        
        if collection.title != title {
            collection.title = title
            hasChanges = true
        }
        
        if collection.defaultSymbol != defaultSymbol {
            collection.updateDefaultSymbol(defaultSymbol)
            hasChanges = true
        }
        
        if Set(symbols) != Set(collection.symbols()) {
            hasChanges = true
            
            let symbolsToAdd = Set(symbols).subtracting(collection.symbols())
            let symbolsToRemove = Set(collection.symbols()).subtracting(symbols)

            collection.add(symbolsToAdd)
            collection.remove(symbolsToRemove)

        }
        
        if hasChanges {
            updateCollection(collection)
        }
        
    }
    
    private func updateDataObject(for collection: SFSCollection) {
        
        if let dataObjectId = SFSCollection.collectionToObjectIdDict[collection] {
            
            if let dataObject = context.object(with: dataObjectId) as? SFSCollectionData {
                
                dataObject.title = title
                dataObject.defaultSFSymbolRawValue = defaultSymbol.rawValue
                dataObject.symbolsRawValues = Set(symbols.map { $0.name })
                PersistenceController.save(context)
                
            } else {
                llog.warn("Update aborted: Object with objectID from loaded cache was not found.")
            }
            
        } else {
            llog.warn("Update aborted: Attempted to update collection that is not in the loaded Cache.")
        }
        
    }
    
}

struct EditSFSCollectionView: View {
    
    @Environment(\.managedObjectContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject var model: SFSCollectionModel
    @State private var isSheetPresented = false
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                Section("Name") {
                    TextField("Name", text: $model.title)
                }
                
                Section("Default symbol") {
                    Text(model.defaultSymbol.systemName)
                }
                
                Section("Symbols") {
                    ForEach(model.symbols, id: \.self) { symbol in
                        Text(symbol.systemName)
                    }
                }
                
                // delete
                Button(action: model.handleDelete) { deleteLabel() }
                                
            }
            .toolbar {
                ToolbarItemGroup(placement: .cancellationAction) { cancelButton }
                ToolbarItemGroup(placement: .confirmationAction) { saveButton }
            }
        }
        .navigationTitle(model.title)
    }
    
    private var cancelButton: some View {
        Button("Cancel") { dismiss() }
    }
        
    private var saveButton: some View {
         Button("Save") {
            model.handleSave()
            dismiss()
        }
    }
        
}

struct EditSFSCollectionView_Previews: PreviewProvider {

    static var previews: some View {
        let persistance = PersistenceController.preview
        let model = SFSCollectionModel(collection: SFSCollection.CircleFill, isPersisted: false)
        EditSFSCollectionView(model: model).environment(\.managedObjectContext, persistance.mainContext)
    }
}
*/
