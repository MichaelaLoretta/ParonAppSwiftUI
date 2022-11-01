//
//  LocationManager.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-01.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    
   private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization() //This one asks users permission
        locationManager.startUpdatingLocation()
    }
    
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard locations.isEmpty else {return}
        locationManager.stopUpdatingLocation()
    }
}

