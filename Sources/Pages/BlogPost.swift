//
//  File.swift
//  
//
//  Created by Nigel Gee on 30/04/2024.
//

import Foundation
import Ignite

struct BlogPost: ContentPage {
    func body(content: Content, context: PublishingContext) async -> [any BlockElement] {
        Group {
            PagerHeader(title: content.title)

            Text("\(content.estimatedWordCount) words; \(content.estimatedReadingMinutes) minutes to read.")

            content.body
        }
        .frame(maxWidth: "90%")
    }
    

}
