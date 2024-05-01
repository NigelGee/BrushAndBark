import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Carousel {
            Slide(background: "/images/shades.jpg") {
                Text("Welcome to Brush & Bark")
                    .font(.title1)

                Text("We're Oxford's #1 dog grooming salon, and ready to leave you pawsitively happy!")
                    .font(.lead)

                Link("Make a Booking", target: Contact())
                    .linkStyle(.button)
            }
            .backgroundOpacity(0.6)

            Slide(background: "/images/chair.jpg") {
                Text("Fur-tastic Grooming for Your Best Friend")
                    .font(.title1)

                Text("We offer full grooming and styling, plus nail treatments, doggy spas, and so much more.")
                    .font(.lead)

                Link("All Services", target: Services())
                    .linkStyle(.button)
            }
            .backgroundOpacity(0.6)

            Slide(background: "/images/wind.jpg") {
                Text("You're barking up the right tree")
                    .font(.title1)

                Text("We're here to make every pup look pupperific – brush up on cuteness today!")
                    .font(.lead)

                Link("Email us", target: "mailto:name@brushandbark.com")
                    .linkStyle(.button)
            }
            .backgroundOpacity(0.6)
        }

        Group {
            Text("ABOUT US")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text(placeholderLength: 50)
                .font(.lead)

            Text("Dave and John")
                .font(.lead)
                .fontWeight(.bold)
        }
        .horizontalAlignment(.center)
        .frame(maxWidth: "90%")
        .margin(.bottom, .extraLarge)

//        Group {
//            Section {
//                Image("/images/rug.jpg", description: "Luna laid as a rug.")
//                    .resizable()
//                    .frame(maxWidth: 500)
//
//                Text(placeholderLength: 100)
//            }
//        }
//        .frame(maxWidth: "90%")
//        .margin(.bottom, .large)



        Section {
            Card(imageName: "/images/rug.jpg") {
                Text("Luna, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.7)

            Card(imageName: "/images/washing.jpg") {
                Text("Ayra, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.7)

            Card(imageName: "/images/car.jpg") {
                Text("Luna, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.7)

            Card(imageName: "/images/dishwasher.jpg") {
                Text("Ayra, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.7)

            Card(imageName: "/images/wind.jpg") {
                Text("Ayra, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.7)

            Card(imageName: "/images/stack.jpg") {
                Text("Luna & Ayra, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.7)
        }
        .columns(3)

    }
}
