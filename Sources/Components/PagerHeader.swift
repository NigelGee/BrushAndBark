//
//  File.swift
//  
//
//  Created by Nigel Gee on 01/05/2024.
//

import Foundation
import Ignite

struct PagerHeader: Component {
    var title: String

    func body(context: PublishingContext) -> [any PageElement] {
        Text(title)
            .font(.title1)
            .fontWeight(.bold)
            .margin(.top, .large)
    }
}
