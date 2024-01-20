//
//  Card.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/19/24.
//

import Foundation
import SwiftUI

protocol Card {
    var title : String { get set }
    var image : Image { get set }
    var desc : String { get set }
    
    init (title : String, image : Image, desc : String)
}

class Athlete : Card, Identifiable{
    var id = UUID()
    var title: String
    var image: Image
    var desc: String

    required init(title: String, image: Image, desc: String) {
        self.title = title
        self.image = image
        self.desc = desc
    }
}

class Sport : Card, Identifiable {
    var id = UUID()
    var title: String
    var image: Image
    var desc: String

    required init(title: String, image: Image, desc: String) {
        self.title = title
        self.image = image
        self.desc = desc
    }
}

class Gear : Card, Identifiable {
    var id = UUID()
    var title: String
    var image: Image
    var desc: String

    required init(title: String, image: Image, desc: String) {
        self.title = title
        self.image = image
        self.desc = desc
    }
}

