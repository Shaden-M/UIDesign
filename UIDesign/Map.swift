//
//  Map.swift
//  UIDesign
//
//  Created by Shaden Almuhaidib on 31/08/2022.
//

import Foundation
import UIKit
import SwiftUI
import MapKit

struct Map: UIViewRepresentable {
    typealias UIViewType = UIView

    func makeUIView(context: Context) -> UIView {
        
        let view = UIView()
        
        let coordinate = CLLocationCoordinate2D(latitude: 37.1232, longitude: -147.232)
        
        let map = MKMapView()
        map.setRegion(MKCoordinateRegion(center: coordinate,
                                         span: MKCoordinateSpan(latitudeDelta:0.7,
                                                                longitudeDelta: 0.7)),
                      animated: true
        )
        view.addSubview(map)
        
        map.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            map.widthAnchor.constraint(equalto: view.widthAnchor),
            map.heightAnchor.constraint(equalto: view.heightAnchor),
            map.centerXAnchor.constraint(equalto: view.centerXAnchor),
            map.centerYAnchor.constraint(equalto: view.centerYAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context){
//        do nothing
    
}

    
}
