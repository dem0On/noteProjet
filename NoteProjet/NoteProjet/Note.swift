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
    var localisation: CLLocation
    
    init(title: String, contenu: String, dateCreation: Date, localisation: CLLocation) {
        self.title = title
        self.contenu = contenu
        self.dateCreation = dateCreation
        self.localisation = localisation
        
    }
}
