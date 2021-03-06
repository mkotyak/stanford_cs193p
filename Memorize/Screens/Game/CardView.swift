import SwiftUI

struct CardView: View {
    let card: MemoryGameModel<String>.Card

    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else if card.isMatched {
                shape.opacity(0)
            } else {
                // Extra credit #3 - use gradient as a theme color
                shape.fill(
                    LinearGradient(
                        colors: [card.color, Color.white],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            }
        }
        .foregroundColor(card.color)
    }
}
