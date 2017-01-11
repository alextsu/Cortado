//
//  ViewController.swift
//  Cortado
//
//  Created by Alexander Tsu on 1/9/17.
//  Copyright © 2017 Alexander Tsu. All rights reserved.
//

import UIKit
import MapKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var iconSquare: UIView!
    @IBOutlet weak var destinationAndTime: UIView!
    @IBOutlet weak var eventDescription: UIView!
    @IBOutlet weak var bio: UIView!
    @IBOutlet weak var attendees: UIView!
    
    
    @IBOutlet weak var profilePhoto: UIImageView!
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var attendeesLabel: UILabel!
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iconSquare.backgroundColor = cortadoLightBrown
        destinationAndTime.backgroundColor = cortadoNavy
        eventDescription.backgroundColor = cortadoLightBlue
        bio.backgroundColor = cortadoDarkBrown
        attendees.backgroundColor = UIColor.white
        
        profilePhoto.image = UIImage(named: "alex-tsu.jpg")
        signUp.tintColor = cortadoLightBrown
        signUp.backgroundColor = UIColor.white
        attendeesLabel.textColor = cortadoNavy
        
        
        navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "nevis", size: 16)!,  NSForegroundColorAttributeName :cortadoNavy]
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        //
        
        
        
        let coffeeLocation = CoffeeLocation(title: "Kobrick's Coffee", coordinate: CLLocationCoordinate2D(latitude: 40.740359, longitude: -74.005634), address: "24 9th Ave", city : "New York", state : "NY", rating : 8.4, url : NSURL(string: "https://foursquare.com/item/5740e323498e7f881500e38f"))
        
        mapView.delegate = self
        mapView.addAnnotation(coffeeLocation)
        centerMapOnLocation(location: CLLocation(latitude: coffeeLocation.coordinate.latitude, longitude: coffeeLocation.coordinate.longitude))
        

        //
        
        
        let bioTitle = "HOST"
        
        let bioLabelString : String = bioTitle + "\n" + "This is my bio. It contains a ton of information about me. This is my bio. I like board games, spicy food, basketball."
        
        var mutableBio = NSMutableAttributedString()
        mutableBio = NSMutableAttributedString(string: bioLabelString, attributes: [NSFontAttributeName:UIFont(name: "lato-regular", size: 11)!])

        mutableBio.addAttribute(NSForegroundColorAttributeName, value: cortadoGreen, range: NSRange(location:0,length:bioTitle.characters.count))
        mutableBio.addAttribute(NSFontAttributeName, value: UIFont(name:"nevis", size: 7.5) as Any, range: NSRange(location:0,length:bioTitle.characters.count))
        
        
         let paragraphStyle = NSMutableParagraphStyle()
         paragraphStyle.lineSpacing = 2.5
         mutableBio.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, mutableBio.length))
 
        bioLabel.attributedText = mutableBio
        
        
        //
        
        
        let descriptionTitle = "DESCRIPTION"
        let descriptionLabelString : String = descriptionTitle + "\n" + "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellente interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing."
        
        var mutableDescription = NSMutableAttributedString()
        mutableDescription = NSMutableAttributedString(string: descriptionLabelString, attributes: [NSFontAttributeName:UIFont(name: "lato-regular", size: 11)!, NSForegroundColorAttributeName :cortadoNavy])
        
        mutableDescription.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:0,length:descriptionTitle.characters.count))
        mutableDescription.addAttribute(NSFontAttributeName, value: UIFont(name:"nevis", size: 7.5) as Any, range: NSRange(location:0,length:descriptionTitle.characters.count))
        
        mutableDescription.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, mutableDescription.length))
        
        descriptionLabel.attributedText = mutableDescription
    
        
        //
        
        let locationTitle = "LOCATION & TIME"
        
        
        if let locationStoreName = coffeeLocation.title?.uppercased() {
        
        let locationAddress = coffeeLocation.address + ", " + coffeeLocation.city + ", " + coffeeLocation.state
        let locationTime = "5:30 PM, Monday, January 9"
        let locationLabelString = locationTitle + "\n" + locationStoreName + "\n\(locationAddress)\n\(locationTime)"
        
        var mutableLocation = NSMutableAttributedString()
        mutableLocation = NSMutableAttributedString(string: locationLabelString, attributes: [NSFontAttributeName:UIFont(name: "lato-regular", size: 11)!, NSForegroundColorAttributeName :UIColor.white])
        mutableLocation.addAttribute(NSForegroundColorAttributeName, value: cortadoGreen, range: NSRange(location:0,length:locationTitle.characters.count))
        mutableLocation.addAttribute(NSFontAttributeName, value: UIFont(name:"nevis", size: 7.5) as Any, range: NSRange(location:0,length:locationTitle.characters.count))
        
        mutableLocation.addAttribute(NSFontAttributeName, value: UIFont(name:"nevis", size: 15) as Any, range: NSRange(location:locationTitle.characters.count+1,length:(locationStoreName.characters.count)))
        
        mutableLocation.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, mutableLocation.length))
   
        locationLabel.attributedText = mutableLocation
        }
        //
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signUpClicked(_ sender: Any) {
    
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

}

