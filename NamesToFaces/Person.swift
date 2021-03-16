//
//  Person.swift
//  NamesToFaces
//
//  Created by Egor Chernakov on 16.03.2021.
//

import UIKit

class Person: NSObject {
    var image: String
    var name: String

    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
