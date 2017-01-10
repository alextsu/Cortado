//
//  ViewController.swift
//  Cortado
//
//  Created by Alexander Tsu on 1/9/17.
//  Copyright © 2017 Alexander Tsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iconSquare: UIView!
    @IBOutlet weak var destinationAndTime: UIView!
    @IBOutlet weak var eventDescription: UIView!
    @IBOutlet weak var bio: UIView!
    @IBOutlet weak var attendees: UIView!
    
    
    @IBOutlet weak var profilePhoto: UIImageView!
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var bioLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        iconSquare.backgroundColor = cortadoLightBrown
        destinationAndTime.backgroundColor = cortadoNavy
        eventDescription.backgroundColor = cortadoLightBlue
        bio.backgroundColor = cortadoDarkBrown
        attendees.backgroundColor = UIColor.white
        
        profilePhoto.image = UIImage(named: "alex-tsu.jpg")
        signUp.tintColor = cortadoLightBrown
        signUp.backgroundColor = UIColor.white
        
        
        navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "nevis", size: 16)!,  NSForegroundColorAttributeName :cortadoNavy]
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        
        let bioTitle = "HOST"
        
        let bioLabelString : String = bioTitle + "\n" + "This is my bio. It contains a ton of information about me. This is my bio. I like board games, spicy food, basketball."
        
        var mutableBio = NSMutableAttributedString()
        mutableBio = NSMutableAttributedString(string: bioLabelString, attributes: [NSFontAttributeName:UIFont(name: "lato-regular", size: 11)!])

        mutableBio.addAttribute(NSForegroundColorAttributeName, value: cortadoGreen, range: NSRange(location:0,length:bioTitle.characters.count))
        mutableBio.addAttribute(NSFontAttributeName, value: UIFont(name:"nevis", size: 7) as Any, range: NSRange(location:0,length:bioTitle.characters.count))
        
        
         let paragraphStyle = NSMutableParagraphStyle()
         paragraphStyle.lineSpacing = 2.5
         mutableBio.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, mutableBio.length))
 
        
        bioLabel.attributedText = mutableBio

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signUpClicked(_ sender: Any) {
    
    }

}

