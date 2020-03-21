//
//  WeatherData.swift
//  Clima
//
//  Created by MacBook on 3/6/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: Array<Weather>
}

struct Main: Codable {
    let temp: Double
    let pressure: Int
    let temp_min: Double
    let temp_max: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
    
}
