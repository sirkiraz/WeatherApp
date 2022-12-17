import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var weatherDescriptionLabel: UILabel!

    // Actions
    @IBAction func getWeatherButtonTapped(_ sender: UIButton) {
        // 1. Get the city name from the text field
        guard let city = cityTextField.text, !city.isEmpty else {
            // Show an error message if the city is wrong!
            return
        }

        // 2. Make a request to the weather API using the city name
        let url = URL(string: "YOUR-API-KEY")!
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            // 3. Parse the response data
            if let data = data {
                let weatherData = try? JSONDecoder().decode(WeatherData.self, from: data)
                if let weatherData = weatherData {
                    // 4. Update the UI with the weather data
                    DispatchQueue.main.async {
                        self?.temperatureLabel.text = "\(weatherData.main.temp)°C"
                        self?.weatherDescriptionLabel.text = weatherData.weather[0].description
                    }
                }
            }
        }
        task.resume()
    }
}

struct WeatherData: Codable {
    struct Main: Codable {
        let temp: Double
    }
    struct Weather: Codable {
        let description: String
    }
    let main: Main
    let weather: [Weather]
}
