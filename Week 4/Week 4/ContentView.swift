import SwiftUI

struct ContentView: View {
    // Tạo dữ liệu mẫu sử dụng lớp Fish
    @State private var fishes: [Fish] = [
        Fish(id: 1, name: "Neon Fish", color: "Red", price: 20.0),
        Fish(id: 2, name: "Betta Fish", color: "Blue", price: 35.0),
        Fish(id: 3, name: "Goldfish", color: "Orange", price: 25.0),
        Fish(id: 4, name: "Angelfish", color: "Silver", price: 40.0)
    ]
    
    var body: some View {
        NavigationView {
            List(fishes) { fish in
                HStack(spacing: 16) {
                    // Icon con cá
                    Image(systemName: "fish.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.blue) // Hoặc đổi màu tùy theo fish.getColor()
                    
                    // Hiển thị tên và thông tin giá
                    VStack(alignment: .leading) {
                        Text(fish.getName())
                            .font(.headline)
                        Text("Color: \(fish.getColor()) - $\(fish.getPrice())")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("My Aquarium")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
