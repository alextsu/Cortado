//
//  AttendeePhotoView.swift
//  Cortado
//
//  Created by Alexander Tsu on 1/10/17.
//  Copyright © 2017 Alexander Tsu. All rights reserved.
//

import Foundation
import UIKit

class AttendeePhotoView : UIButton {
    
    var headshot : UIImage?
    let padding : CGFloat = 4
        
    init(frame: CGRect, headshot: UIImage?) {
        self.headshot = headshot
        
        super.init(frame: frame)
        didLoad()
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        didLoad()
    }
    
    func setHeadshot(headshot: UIImage) {
        self.headshot = headshot
    }
    
    func didLoad() {
        //Place your initialization code here
        
        //I actually create & place constraints in here, instead of in
        //updateConstraints
        
        let rect = CGRect(x: padding, y: padding, width: self.frame.width - CGFloat(2 * padding ), height: self.frame.height - CGFloat (2 * padding))
        
        let subview = UIImageView(frame: rect)
        
        if(headshot != nil) {
            subview.image = headshot
        }
        else {
            subview.backgroundColor = cortadoGreen
        }
        
        subview.setRounded()
        
        self.addSubview(subview)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //Custom manually positioning layout goes here (auto-layout pass has already run first pass)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        //Disable this if you are adding constraints manually
        //or you're going to have a 'bad time'
        //self.translatesAutoresizingMaskIntoConstraints = false
        
        //Add custom constraint code here
    }
    
    
    
}

extension UIImageView {
    
    func setRounded() {
        let radius = self.frame.width / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}
