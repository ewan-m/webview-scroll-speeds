import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(url: "https://expo.dev/")
            .edgesIgnoringSafeArea(.all)
    }
}

struct WebView: UIViewRepresentable {
    let url: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let url = URL(string: url) {
            let request = URLRequest(url: url)
            webView.load(request)
            
            print(UIScrollView.DecelerationRate.fast)
            print(UIScrollView.DecelerationRate.normal)
            print(webView.scrollView.decelerationRate)
        }
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

@main
struct TestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
