//
//  CustomMKAnnotationView.swift
//  CustomPin
//
//  Created by Gabor Csontos on 11/25/15.
//  Copyright © 2015 Gabor Csontos. All rights reserved.
//

import UIKit
import MapKit

class CustomMKAnnotationView: MKAnnotationView {

    var imgView:UIImageView!
    
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.clearColor()
        self.canShowCallout = true
        self.frame = CGRectMake(0, 0, 30, 30)
        self.imgView = UIImageView(image: UIImage(named: "Pin"))
        self.imgView.contentMode = .ScaleAspectFit
        self.imgView.frame = self.bounds
        self.addSubview(self.imgView)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
