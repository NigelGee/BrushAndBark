import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                let brandImage = Image("/images/logo.svg", description: "Brush and Bark")
                    .frame(width: 200)

                NavigationBar(logo: brandImage) {
                    Link("Services", target: Services())
                    Link("Reviews", target: Reviews())
                    Link("Blog", target: Blog())
                    Link("Videos", target: Videos())
                    Link("Help", target: Help())
                    Link("Contact Us", target: Contact())
                }
                .backgroundColor("#2c3e50")
                .navigationBarStyle(.dark)
                .navigationItemAlignment(.trailing)

                page.body

                IgniteFooter()

                Text("This Is a Fictional Site")
                    .horizontalAlignment(.center)
            }
        }
    }
}
