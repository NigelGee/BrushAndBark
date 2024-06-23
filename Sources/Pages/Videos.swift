import Foundation
import Ignite

struct Videos: StaticPage {
    var title = "Videos"

    func body(context: PublishingContext) -> [BlockElement] {

        Group {
            PagerHeader(title: "VIDEOS")

            Group {
                Text("Instructional videos for Dogs.")
                    .font(.lead)

                Embed(youTubeID: "5bhvVm3QKME", title: "Barking with Swift")
                    .aspectRatio(.r16x9)
            }
            .frame(maxWidth: "50%")

        }
        .frame(maxWidth: "90%")
    }
}
