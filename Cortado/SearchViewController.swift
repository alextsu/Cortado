//
//  SearchViewController.swift
//  Cortado
//
//  Created by Alexander Tsu on 1/12/17.
//  Copyright © 2017 Alexander Tsu. All rights reserved.
//

import UIKit
import MapKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var learnMoreButton: UIButton!
    @IBOutlet weak var dateTimeView: UIView!
    @IBOutlet weak var tribeView: UIView!
    @IBOutlet weak var placeNameView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Nav bar
    
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        //Color Fixing
        
        learnMoreButton.backgroundColor = cortadoLightBlue
        learnMoreButton.tintColor = UIColor.white
        signUpButton.tintColor = cortadoLightBrown
        dateTimeView.backgroundColor = cortadoDarkBrown
        placeNameView.backgroundColor = cortadoNavy
        tribeView.backgroundColor = cortadoLightBrown
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
