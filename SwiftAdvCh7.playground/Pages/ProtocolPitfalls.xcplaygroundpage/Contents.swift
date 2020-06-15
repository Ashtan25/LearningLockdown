//: [Previous](@previous)

import Foundation

struct Folder {}
struct Cell {}

protocol Listable {
    associatedtype FileType
    func getFileType() -> String
}


class FolderCell: Listable {
    typealias FileType = Folder
    func getFileType() -> String {
        return "Folder Cell with \(FileType.self)"
    }
}

class ListCell: Listable {
    typealias FileType = Cell
    
    func getFileType() -> String {
        return "List Cell with \(FileType.self)"
    }
}

class CollectionCell: Listable {
    typealias FileType = Cell
    
    func getFileType() -> String {
        return "Collection Cell with \(FileType.self)"
    }
}


//let cell: Listable = CollectionCell() // Error



func enterListCell<T: Listable>(enterCell: T) {}
enterListCell(enterCell: FolderCell())
enterListCell(enterCell: ListCell())

//The compiler does not know the type of FileType as shown below.


//let cell: Listable = arc4random() * 2 == 0 ? FolderCell() : ListCell()


//FileType could be Folder or Cell. It is only known when you execute the arc4Random() method. By the time it is called, it is already compiled

// Lets Circumvent this problem

class AnyCell<T>: Listable {
   
    
    typealias FileType = T
    
    private let _getFileType: () -> String
    
    init<U: Listable>(_ enterAnyCell: U) where U.FileType == T {
        _getFileType = enterAnyCell.getFileType
    }
    
    
    
    func getFileType() -> String {
        return _getFileType()
       }
    
}

let collectionCell: AnyCell = AnyCell(CollectionCell())
print(collectionCell.getFileType())
let folderCell: AnyCell = AnyCell(FolderCell())
print(folderCell.getFileType())





















//: [Next](@next)
