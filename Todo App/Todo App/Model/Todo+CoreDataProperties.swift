//
//  Todo+CoreDataProperties.swift
//  Todo App
//
//  Created by Igor Shulumba on 24.12.2024.
//
//

import Foundation
import CoreData


extension Todo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Todo> {
        return NSFetchRequest<Todo>(entityName: "Todo")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var priority: String?

}

extension Todo : Identifiable {

}
