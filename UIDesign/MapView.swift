//
//  MapView.swift
//  UIDesign
//
//  Created by Shaden Almuhaidib on 31/08/2022.
//

import SwiftUI

struct MapView: View {
    var body: some View {
Map()
            .frame(width: 300, height: 300, alignment: .center)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
