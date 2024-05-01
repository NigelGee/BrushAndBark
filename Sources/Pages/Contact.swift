import Foundation
import Ignite

struct Contact: StaticPage {
    var title = "Contact"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("CONTACT US")
                .headerText

            Text("We're opening six days a week from 8am to 4pm, and although reservations are recommended you're always welcome to come on in with your pup!")

            List {
                "Address: New College Lane, Oxford, OX1 3BL"
                "Phone: 01865 555-5555"
                Text {
                    "Email: "
                    Link("name@brushandbark.com", target: "mailto:name@brushandbark.com")
                }

            }

            Text("Find Us")
                .font(.title2)

            Include("map.html")
        }
        .frame(maxWidth: "90%")
    }
}
