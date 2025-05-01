import SwiftUI

struct ProductListView: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    let products = [
        Product(title: "AirPods", subtitle: "Wireless Earbuds", image: "earbuds"),
        Product(title: "iPhone", subtitle: "Smartphone", image: "iphone")
    ]

    var body: some View {
        VStack {
            ForEach(products) { product in
                ProductCard(product: product, isCompact: sizeClass == .compact)
                    .padding()
            }
        }
    }
}

#Preview {
    ProductListView()
}
