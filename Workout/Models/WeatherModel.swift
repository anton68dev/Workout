//
//  WeatherModel.swift
//  Workout
//
//  Created by Anton Makarov on 18.04.2022.
//

import Foundation
import UIKit

struct WeatherModel: Decodable {
    let currently: Currently
}

struct Currently: Decodable {
    let temperature: Double
    let icon: String?

    var temperatureCelsius: Int {
        return (Int(temperature) - 32) * 5 / 9
    }
    
    var iconLocal: String {
        switch icon {
        case "clear-day": return "Ясно"
        case "clear-night": return "Ясная ночь"
        case "rain": return "Дождь"
        case "snow": return "Снег"
        case "sleet": return "Мокрый снег"
        case "wind": return "Ветрено"
        case "fog": return "Туман"
        case "cloudy": return "Облачно"
        case "partly-cloudy-day": return "Пасмурный день"
        case "partly-cloudy-night": return "Пасмурная ночь"
        default: return "No data"
        }
    }
    
    var description: String {
        switch icon {
        case "clear-day": return "Отличная погода для плодотворной тренировки на улице💪"
        case "clear-night": return "Ну если так пойдет, потренить можно и на улице🏃"
        case "rain": return "Давайка сегодня потреним дома🏠"
        case "snow": return "Давайка сегодня потреним дома🏠"
        case "sleet": return "Давайка сегодня потреним дома🏠"
        case "wind": return "Думаю, не стоит рисквать, потреним дома🏠"
        case "fog": return "Думаю, не стоит рисквать, потреним дома🏠"
        case "cloudy": return "Думаю, не стоит рисквать, потреним дома🏠"
        case "partly-cloudy-day": return "Давайка сегодня потреним дома🏠"
        case "partly-cloudy-night": return "Возможно будет дождь, но это не точно🤷"
        default: return "No data"
        }
    }
    
  
}
