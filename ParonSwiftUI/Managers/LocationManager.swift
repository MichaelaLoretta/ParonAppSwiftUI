//
//  LocationManager.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-01.
//
import Foundation
import MapKit

//Denna kollar användarens position samt frågar om lov.

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 59.334591, longitude: 18.063240), span: MKCoordinateSpan(latitudeDelta: 0.30, longitudeDelta: 0.30))
    
   let manager = CLLocationManager()
//    var currentLocation: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        manager.delegate = self
//        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Din plats har uppdaterats")
//        currentLocation = locations.first?.coordinate
        guard locations.isEmpty else {return}
        manager.stopUpdatingLocation()
    }
    
}
