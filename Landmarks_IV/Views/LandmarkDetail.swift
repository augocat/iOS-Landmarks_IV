import SwiftUI

struct LandmarkDetail: View {
  var landmark: Landmark

  var body: some View {
    VStack {
      MapView(coordinate: landmark.locationCoordinate)
        .frame(height: 300.0)
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130)
      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }.font(.subheadline)
        Divider()
        Text("About \(landmark.name)")
          .font(.title2)
        Text(landmark.description)
      }
      .padding()
      Spacer()
    }
  }
}

#Preview {
  LandmarkDetail(landmark: landmarks[0])
}