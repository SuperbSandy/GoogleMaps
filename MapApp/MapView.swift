//
//  MapView.swift
//  MapApp
//
//  Created by Sandeep Uday Deshpande on 07/12/17.
//  Copyright © 2017 Sandeep. All rights reserved.
//

import Foundation
import GoogleMaps

class MapView{
    func MapView()-> GMSMapView {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
        return mapView
    }
}
