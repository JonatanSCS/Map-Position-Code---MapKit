//
//  ViewController.swift
//  UlmMisterApp
//
//  Created by Jonatan Santa Cruz Soria on 25/02/15.
//  Copyright (c) 2015 Jonatan Santa Cruz Soria. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate{

    @IBOutlet weak var theMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        var latitude: CLLocationDegrees = 19.343925
        var longitude: CLLocationDegrees = -99.090048
        
        var latDelta:CLLocationDegrees = 0.1
        var longDelta:CLLocationDegrees = 0.1
        
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        
        var churchLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(churchLocation, theSpan)
        
    
        self.theMapView.setRegion(theRegion, animated: true)

        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

