//
//  Note.swift
//  NoteProjet
//
//  Created by ratte valentin on 08/02/2019.
//  Copyright © 2019 ratte valentin. All rights reserved.
//

import Foundation

class Note{
    var title: String
    var contenu: String
    var dateCreation: Date
    var localisation: String
    
    init(title: String, contenu: String, dateCreation: Date, localisation: String) {
        self.title = title
        self.contenu = contenu
        self.dateCreation = dateCreation
        self.localisation = localisation
        
    }
}
