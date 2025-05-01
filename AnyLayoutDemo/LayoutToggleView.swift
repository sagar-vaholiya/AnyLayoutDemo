import SwiftUI

struct LayoutToggleView: View {
    @State private var isGrid = false

    var body: some View {
        VStack {
            Toggle("Grid Layout", isOn: $isGrid)
                .padding()

            let layout: AnyLayout = isGrid ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())

            layout {
                ForEach(1..<5) { i in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: 80, height: 80)
                        .overlay(Text("\(i)").foregroundColor(.white))
                }
            }
            .animation(.easeInOut, value: isGrid)
        }
    }
}

#Preview {
    LayoutToggleView()
}
