import Foundation

public class Vehicle {
    enum State: String {
        case online
    }
    let color: String?
    let displayName: String?
    let identifier: Int
    let optionCodes: String
    let userIdentifier: Int?
    let vehicleIdentifier: Int
    let vin: String
    let tokens: [String]
    let state: State

    init?(dictionary: [String: AnyObject]) {
        guard let identifier = dictionary["id"] as? Int,
            let optionCodes = dictionary["option_codes"] as? String,
            let vehicleIdentifier = dictionary["vehicle_id"] as? Int,
            let vin = dictionary["vin"] as? String,
            let tokens = dictionary["tokens"] as? [String],
            let stateString = dictionary["state"] as? String,
            let state = State(rawValue: stateString) else {
                return nil
        }
        self.displayName = dictionary["display_name"] as? String
        self.color = dictionary["color"] as? String
        self.userIdentifier = dictionary["user_id"] as? Int
        self.identifier = identifier
        self.optionCodes = optionCodes
        self.vehicleIdentifier = vehicleIdentifier
        self.vin = vin
        self.tokens = tokens
        self.state = state
    }
}
