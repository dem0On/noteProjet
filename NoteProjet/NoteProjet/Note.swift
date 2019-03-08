//
//  Note.swift
//  NoteProjet
//
//  Created by ratte valentin on 08/02/2019.
//  Copyright © 2019 ratte valentin. All rights reserved.
//

import Foundation
import MapKit

class Note{
    var title: String
    var contenu: String
    var dateCreation: Date
    var longitude: Double
    var latitude: Double
    
    init(title: String, contenu: String, dateCreation: Date, longitude: Double, latitude: Double) {
        self.title = title
        self.contenu = contenu
        self.dateCreation = dateCreation
        self.longitude = longitude
        self.latitude = latitude
        
    }
}
