import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Hello World"
    var baseTitle = " – My Awesome Site"
    var url = URL("https://www.example.com")
    var builtInIconsEnabled = true

    var author = "Nigel Gee"

    var homePage = Home()
    var tagPage = Tags()
    var theme = MyTheme()
    var pageWidth = 12

    var pages: [any StaticPage] {
        Blog()
        Contact()
        Help()
        Reviews()
        Services()
        Videos()
    }

    var layouts: [any ContentPage] {
        BlogPost()
    }
}


