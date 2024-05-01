//
//  File.swift
//  
//
//  Created by Nigel Gee on 29/04/2024.
//

import Foundation
import Ignite

extension Text {
    var headerText: Self {
        self
            .font(.title1)
            .fontWeight(.bold)
            .margin(.top, .large)
    }
}


