public enum FontFamily: String {
    case display = "SansDisplay"
    case text = "SansText"
}

extension FontFamily {
    func name(for weight: FontWeight) -> String {
        return "\(rawValue)-\(weight.rawValue)"
    }
}
