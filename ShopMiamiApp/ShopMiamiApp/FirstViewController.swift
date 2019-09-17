//
//  FirstViewController.swift
//  ShopMiamiApp
//
//  Created by Zach mills on 9/2/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit
import MapKit

class FirstViewController: UIViewController {
    
    // MARK: - Properties
    var artworks: [Artwork] = []
    @IBOutlet weak var mapView: MKMapView!
    let regionRadius: CLLocationDistance = 6000
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 25.957736530243444, longitude: -80.14306534035167)
        centerMapOnLocation(location: initialLocation)
        
        mapView.delegate = self
        //    mapView.register(ArtworkMarkerView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        mapView.register(Artwork.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        loadInitialData()
        mapView.addAnnotations(artworks)
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkLocationAuthorizationStatus()
    }
    
    // MARK: - CLLocationManager
    
    let locationManager = CLLocationManager()
    func checkLocationAuthorizationStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedAlways {
            mapView.showsUserLocation = true
        } else {
            locationManager.requestAlwaysAuthorization()
        }
        
    }
    
    // MARK: - Helper methods
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    func loadInitialData() {
        // 1
        guard let fileName = Bundle.main.path(forResource: "mallJSON", ofType: "json")
            else { return }
        let optionalData = try? Data(contentsOf: URL(fileURLWithPath: fileName))
        
        guard
            let data = optionalData,
            // 2
            let json = try? JSONSerialization.jsonObject(with: data),
            // 3
            let dictionary = json as? [String: Any],
            // 4
            let works = dictionary["type"] as? [[Any]]
            else { return }
        // 5
        let validWorks = works.flatMap { Artwork(json: $0) }
        artworks.append(contentsOf: validWorks)
    }
    
}

// MARK: - MKMapViewDelegate

extension FirstViewController: MKMapViewDelegate {
    
    //   1
    //  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    //    guard let annotation = annotation as? Artwork else { return nil }
    //    // 2
    //    let identifier = "marker"
    //    var view: MKMarkerAnnotationView
    //    if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
    //      as? MKMarkerAnnotationView { // 3
    //      dequeuedView.annotation = annotation
    //      view = dequeuedView
    //    } else {
    //      // 4
    //      view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
    //      view.canShowCallout = true
    //      view.calloutOffset = CGPoint(x: -5, y: 5)
    //      view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
    //    }
    //    return view
    //  }
    
   
    
}

