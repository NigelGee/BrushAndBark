import Foundation
import Ignite

struct Blog: StaticPage {
    var title = "Blog"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("OUR BLOG")
                .headerText

            Text("Each month we write a new blog post covering tips, techniques, and other advice for dog owners.")
                .font(.lead)

            Section {
                for content in context.allContent {
                    ContentPreview(for: content)
                        .margin(.top, 20)
                }
            }
            .columns(2)

        }
        .frame(maxWidth: "90%")
    }
}
