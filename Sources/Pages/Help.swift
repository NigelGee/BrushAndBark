import Foundation
import Ignite

struct Help: StaticPage {
    var title = "Help"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            PagerHeader(title: "HELP")

            Accordion {
                Item("What services do you offer at Brush & Bark?", startsOpen: true) {
                    Text(placeholderLength: 100)
                    Text {
                        Link("Go to Services", target: Services())
                    }
                }

                Item("How do I book an appointment?") {
                    Text(placeholderLength: 100)
                }

                Item("What are your grooming prices?") {
                    Text(placeholderLength: 100)
                    Text {
                        Link("Go to Services", target: Services())
                    }
                }

                Item("How long does a grooming session take?") {
                    Text(placeholderLength: 100)
                }

                Item("What do I need to bring for my dog’s grooming appointment?") {
                    Text(placeholderLength: 100)
                }
            }
            .openMode(.all)
        }
        .frame(maxWidth: "90%")
    }
}
