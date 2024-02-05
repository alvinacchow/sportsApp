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
    
}

class Athlete: Card, Identifiable {
    var id = UUID()
    var title: String
    var image: Image
    var desc: String
    var bday: String
    var sport: String
    init(title: String = "", image: Image = Image("blank"), bday: String = "", sport: String = "", desc: String = "") {
        self.title = title
        self.image = image
        self.bday = bday
        self.sport = sport
        self.desc = desc
    }
}

class Sport : Card, Identifiable {
    var id = UUID()
    var title: String
    var image: Image
    var year: String
    var loc: String
    var desc: String
    
    init(title: String = "", image: Image = Image("blank"), year: String = "", loc: String = "", desc: String = "") {
        self.title = title
        self.image = image
        self.year = year
        self.loc = loc
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
