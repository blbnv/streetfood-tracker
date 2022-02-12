//
//  FoodMapViewController.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import MapKit
import UIKit

final class FoodMapViewController: UIViewController {
    override func loadView() {
        let mapView = MKMapView(frame: UIScreen.main.bounds)
        self.view = mapView
    }
}
