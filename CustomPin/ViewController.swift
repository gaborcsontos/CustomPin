//
//  ViewController.swift
//  CustomPin
//
//  Created by Gabor Csontos on 11/25/15.
//  Copyright © 2015 Gabor Csontos. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController , MKMapViewDelegate {
    
    var map: MKMapView?
    
    var pinAnnotationView:CustomMKAnnotationView!
    var pointAnnotation:MKPointAnnotation!
    var annotation:MKAnnotation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.map = MKMapView(frame: CGRectMake(0,0, self.view.frame.width,self.view.frame.height))
        map?.delegate = self
        
        view.addSubview(map!)
        
        self.pointAnnotation = MKPointAnnotation()
        self.pointAnnotation.title = "this is a custom annotation"
        self.pointAnnotation.coordinate = CLLocationCoordinate2D(latitude: 13.023, longitude: 12.123)
        
        
        self.pinAnnotationView = CustomMKAnnotationView(annotation: self.pointAnnotation, reuseIdentifier: nil)
        map!.centerCoordinate = self.pointAnnotation.coordinate
        map!.addAnnotation(self.pinAnnotationView.annotation!)
    }
    
    
    
    func mapView(mapView: MKMapView,
        viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView?{
            
            self.pinAnnotationView.rightCalloutAccessoryView = UIButton(type: UIButtonType.InfoLight)
            self.pinAnnotationView.canShowCallout = true
            
            return self.pinAnnotationView
    }
    
    
    func mapView(mapView: MKMapView,
        annotationView view: MKAnnotationView,
        calloutAccessoryControlTapped control: UIControl){
            print("annotation selected")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}