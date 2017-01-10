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

        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signUpClicked(_ sender: Any) {
    
    }

}

