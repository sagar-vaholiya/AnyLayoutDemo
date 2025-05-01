import Foundation

struct Product: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let image: String
}
