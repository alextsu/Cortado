//
//  Person.swift
//  Cortado
//
//  Created by Alexander Tsu on 1/11/17.
//  Copyright © 2017 Alexander Tsu. All rights reserved.
//

import Foundation
import UIKit

class Person : NSObject {
    
    let id : String
    let firstName : String
    let lastName : String
    var profileImage : UIImage?
    var bio : String?
    let fbLink : NSURL?
    
    init(id : String, firstName : String, lastName : String, profileImage : UIImage?, bio : String?, fbLink : NSURL?) {
        
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.profileImage = profileImage
        self.bio = bio
        self.fbLink = fbLink
    }
}

