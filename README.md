# GoogleMaps
# Google Maps with Swift 4
Basic Google Maps integration with Xcode project swift 4

## Getting Started

###1. Create a new Xcode project.
Go to Xcode -> Choose Single View Application -> Enter the product name -> Next and Create App

###2. Open terminal in Mac and go to the Xcode project main folder path

###3. With project root folder as the current directory enter the following commands:
a. "pod init" : This initialises the Podfile. 
b. "open Podfile" : This opens the Podfile with TextEdit as default
c. Add the following in Podfile and save it:  
Note: under target Add your target name which is generally the name of the project

source 'https://github.com/CocoaPods/Specs.git'
target 'MapApp' do
  use_frameworks!
	pod 'GoogleMaps'
  	pod 'GooglePlaces'
end

###4. Close the Xcode project and open .xcworkspace instead of .xcodeproj 

##Google Maps registration

###Goto the following link:
https://developers.google.com/maps/ios/
Enter the login id credentials
###Goto https://developers.google.com/maps/documentation/ios-sdk/
And Select get a key. Follow the steps and get the key.

###5. Opened  xcworkspace in Xcode goto Appdelegate and Under Application didFinishLaunchingWithOptions
Enter the following code
GMSServices.provideAPIKey(“Enter_Your_Key_Here”)

###6.  Create new file in Xcode from file -> New file Select Swift file -> Next -> Save as MapView.

###7. Open MapView.swift and following code

class MapView{
    func MapView()-> GMSMapView {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
        return mapView
    }

###8. In ViewController.swift file under viewDidLoad add the following
let mapView = MapView()
view = mapView.MapView()
