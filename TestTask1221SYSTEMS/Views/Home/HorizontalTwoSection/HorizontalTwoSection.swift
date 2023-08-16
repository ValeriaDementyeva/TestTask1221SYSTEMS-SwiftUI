
import SwiftUI

struct HorizontalTwoSection: View {

    @ObservedObject var dataModel = ObserveTwoSection()
    let rows: [GridItem] = Array(repeating: .init(.fixed(320)), count: 1)

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, alignment: .center, spacing: 10) {
                ForEach(dataModel.info, id:\.id) { item in
                    Image(item.image)
                        .resizable()
                        .frame(width: 320, height: 170)
                        .cornerRadius(20)
                        .onAppear {
                            if dataModel.info.last == item {
                                loadMoreContent()
                            }
                        }
                }
            }.frame(height: 170)
                .padding([.leading, .trailing, .top], 10)
        }
    }
    func loadMoreContent() {
        let newItems = TwoSection.info
        dataModel.info.insert(contentsOf: newItems, at: 0)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalTwoSection()
    }
}

