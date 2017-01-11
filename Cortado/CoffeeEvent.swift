//
//  CoffeeEvent.swift
//  Cortado
//
//  Created by Alexander Tsu on 1/11/17.
//  Copyright © 2017 Alexander Tsu. All rights reserved.
//

import Foundation
import UIKit

class CoffeeEvent : NSObject {
    
    let id : String
    var title : String
    let host : Person
    var location : CoffeeLocation
    var attendees : [Person]
    var descriptionOfEvent : String
    var openEvent : Bool
    var time : NSDate
    var tribe : Int
    
    init(id : String, title : String, host : Person, location : CoffeeLocation, attendees : [Person], descriptionOfEvent : String, openEvent : Bool, time : NSDate, tribe : Int) {
        
        self.id = id
        self.title = title
        self.host = host
        self.location = location
        self.attendees = attendees
        self.descriptionOfEvent = descriptionOfEvent
        self.openEvent = openEvent
        self.time = time
        self.tribe = tribe
        
    }
    
}
