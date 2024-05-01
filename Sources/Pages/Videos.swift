import Foundation
import Ignite

struct Videos: StaticPage {
    var title = "Videos"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("VIDEOS")
                .headerText

            Text("Instructional videos for Dogs.")
                .font(.lead)

            Embed(youTubeID: "5bhvVm3QKME", title: "Barking with Swift")
                .aspectRatio(.r16x9)

        }
        .frame(maxWidth: "90%")
    }
}
