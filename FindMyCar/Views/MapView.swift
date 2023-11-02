//
//  MapView.swift
//  FindMyCar
//
//  Created by Bakhtiyorjon Mirzajonov on 11/2/23.
//  Copyright © 2023 Steph K. Ananth. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  let viewController: ViewController = ViewController()
  @State private var showingAlert = false
  
  func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
    let coordinate = CLLocationCoordinate2D(latitude: 40.445771, longitude: -79.944223
    )
    let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    let region = MKCoordinateRegion(center: coordinate, span: span)
    uiView.setRegion(region, animated: true)
  }

  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView(frame: .zero)
    return mapView
  }
}

#Preview {
    MapView(viewController: ViewController())
}
