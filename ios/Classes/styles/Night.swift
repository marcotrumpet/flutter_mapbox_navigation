import MapboxMaps
import MapboxDirections
import MapboxCoreNavigation
import MapboxNavigation

class CustomNightStyle: NightStyle {

    required init() {
        super.init()
        initStyle()
    }

    init(url: String?){
        super.init()
       
        mapStyleURL = URL(string: url ?? StyleURI.navigationNight.rawValue)!
        previewMapStyleURL = mapStyleURL
        
        styleType = .night
    }

    func initStyle()
    {
        // Use a custom map style.
        mapStyleURL = URL(string: StyleURI.navigationNight.rawValue)!
        previewMapStyleURL = mapStyleURL

        // Specify that the style should be used during the day.
        styleType = .night
    }

    override func apply() {
        super.apply()
        // Begin styling the UI
        //BottomBannerView.appearance().backgroundColor = .orange
    }
}
