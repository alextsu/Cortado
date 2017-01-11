//
//  CoffeeLocation.swift
//  Cortado
//
//  Created by Alexander Tsu on 1/10/17.
//  Copyright © 2017 Alexander Tsu. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class CoffeeLocation : NSObject, MKAnnotation {
    
    var title : String?
    let coordinate : CLLocationCoordinate2D
    
    let address : String
    let city : String
    let state : String
    
    let rating : Float
    let url : NSURL?
    
    
    init (title : String, coordinate : CLLocationCoordinate2D, address : String, city : String, state : String, rating : Float, url : NSURL?) {
        
        self.title = title
        self.coordinate = coordinate
        
        self.address = address
        self.city = city
        self.state = state
        self.rating = rating
        self.url = url
        
        super.init()
        
    }
}
