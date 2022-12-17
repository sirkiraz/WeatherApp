# <img width="30" align="center" src="https://cdn-icons-png.flaticon.com/512/3845/3845731.png"> Basic IOS WeatherApp Skeleton

This skeleton includes a view controller with outlets for the text field, temperature label, and weather description label, and an action for the "Get Weather" button. 
When the button is tapped, the view controller makes a request to a weather API using the city name entered in the text field, parses the response data, and updates the UI with the temperature and weather description.

To run the code for a app, you will need to do the following:

1. Download the project and get the main file
2. Setup a project in Xcode, the (IDE) for iOS development. To do this, open Xcode and select "Create a new Xcode project" from the welcome screen.
3. Replace `YOUR-API-KEY` with your valid Openweathermap API key

```swift
        //Make a request to the weather API using the city name
        let url = URL(string: "YOUR-API-KEY")!
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
```

In addition to these steps, you may also need to do the following:

• Handle errors and edge cases in your code. For example, you might want to show an error message if the city name is invalid or the API request fails.

• Test your app on different devices and screen sizes to ensure that it looks and works as expected. You can use the Xcode simulator or physical devices to test your app.

• Debug your app if you encounter any issues. Xcode includes a debugger that you can use to set breakpoints and step through your code to find and fix problems.

**NOTE: That this is just a basic skeleton example, and you can add more functionality and features to your weather app as needed.**

# <img width="30" align="center" src="https://cdn2.iconfinder.com/data/icons/love-love-love/94/two_hearts-512.png"> Thanks for: 

<img width="35" align="center" src="https://img.icons8.com/fluency/240/swiftui.png"> [SwiftUI](https://developer.apple.com/xcode/swiftui/)
<img width="30" align="center" src="https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons/images/app-icon-realistic-materials_2x.png"> [Xcode](https://developer.apple.com/xcode/)
<img width="29" align="center" src="https://cdn-icons-png.flaticon.com/512/8605/8605634.png"> [WeatherMap API](https://openweathermap.org/)

**I hope this helps! Let me know if you have any questions.**

<a href="https://twitter.com/sirkalach" target="_blank">
<img width="35" align="center" src="https://edent.github.io/SuperTinyIcons/images/png/twitter.png" alt="If you have any quest"/>
</a>
<a href="https://instagram.com/sirkiraz" target="_blank">
<img width="35" align="center" src="https://static-00.iconduck.com/assets.00/instagram-icon-512x512-ggh8x3cn.png" alt="If you have any quest"/>
</a>
<a href="https://www.paypal.com/donate/?hosted_button_id=69PHPVYPNWEUE" target="_blank">
<img width="140" align="center"src="https://janbeta.net/wp-content/uploads/2020/06/Paypal-Donate.png" alt="Support me via PayPal"/>
</a>
