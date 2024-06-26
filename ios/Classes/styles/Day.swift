import MapboxMaps
import MapboxNavigation
import MapboxMaps

class CustomDayStyle: DayStyle {

    required init() {
        super.init()
        initStyle()
    }

    init(url: String?){
        super.init()
     
        mapStyleURL = URL(string: url ?? StyleURI.navigationDay.rawValue)!
        previewMapStyleURL = mapStyleURL
        
        styleType = .day
    }

    func initStyle()
    {
        // Use a custom map style.
        mapStyleURL = URL(string: StyleURI.navigationDay.rawValue)!
        previewMapStyleURL = mapStyleURL

        // Specify that the style should be used during the day.
        styleType = .day
    }

    override func apply() {
        super.apply()
        // Begin styling the UI
        //BottomBannerView.appearance().backgroundColor = .orange
    }
}
