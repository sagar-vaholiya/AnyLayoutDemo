import SwiftUI

struct ProductCard: View {
    var product: Product
    var isCompact: Bool

    var body: some View {
        let layout = isCompact ? AnyLayout(VStackLayout(alignment: .center)) :
                                 AnyLayout(HStackLayout(alignment: .center))

        layout {
            Image(systemName: product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .background(Color.gray.opacity(0.1))

            VStack(alignment: .center) {
                Text(product.title).font(.headline)
                Text(product.subtitle).font(.subheadline).foregroundColor(.secondary)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 16).fill(Color.white).shadow(radius: 4))
    }
}

#Preview {
    ProductCard(product: Product(title: "iPhone", subtitle: "Smartphone", image: "iphone"), isCompact: true)
}
