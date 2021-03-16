//
//  Person.swift
//  NamesToFaces
//
//  Created by Egor Chernakov on 16.03.2021.
//

import UIKit

class Person: NSObject, NSCoding {
    
    var image: String
    var name: String

    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(image, forKey: "image")
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String ?? ""
        image = coder.decodeObject(forKey: "image") as? String ?? ""
    }
}
