import UIKit
final class HomeVC : UIViewController {
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct HomeVCRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> UIView {
        return UIStoryboard(name: "Main", bundle: Bundle.main).instantiateInitialViewController()!.view
    }
    
    func updateUIView(_ view: UIView, context: Context) {
        
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<HomeVCRepresentable>) -> UIViewController {
    return HomeVC()
    }
}

@available(iOS 13.0, *)
struct HomeVCPreview: PreviewProvider {
    
    static var previews: some SwiftUI.View {
        HomeVCRepresentable()
    }
    
    
}
#endif
