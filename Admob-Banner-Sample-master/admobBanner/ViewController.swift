import UIKit
import GoogleMobileAds


    

class ViewController: UIViewController {
    
    var interstitial:GADInterstitial!
    
    var banner : GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadBanner()
        
        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        let req = GADRequest()
        interstitial.loadRequest(req)

        
    }
    
    
    @IBAction func Next1(sender: AnyObject) {
        
        if (interstitial.isReady) {
            interstitial.presentFromRootViewController(self)
        }
    }
    
    
    
    
    
    @IBAction func Next(sender: AnyObject) {
        if (interstitial.isReady) {
            interstitial.presentFromRootViewController(self)
        }
        
    }
    
    
    
    func loadBanner(){
        banner = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        banner.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        banner.rootViewController = self
        let req : GADRequest = GADRequest()
        banner.loadRequest(req)
        banner.frame = CGRectMake(0, view.bounds.height - banner.frame.size.height, banner.frame.size.width, banner.frame.size.height)
        self.view.addSubview(banner)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
