//
//  RoundedShape.swift
//  ParonSwiftUI
//
//  Created by Michaela Beyer on 2022-11-01.
//

import SwiftUI

//The model for the rounded shape in RoundedCornerBg View

struct RoundedShape: Shape {
    
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
        
        return Path(path.cgPath)
    }
}
