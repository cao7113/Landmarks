import SwiftUI

@main
struct LandmarksApp: App {
    // @State 属性包装器：SwiftUI 中的 @State 用于声明“状态”属性，这些属性由视图管理。当 @State 属性发生变化时，SwiftUI 会自动重新计算并更新依赖这个属性的视图，从而实现响应式更新。
    // 使用 private 表示该属性只在当前结构体或类内部可见，外部不能直接访问
    // 这里 modelData 被初始化为 ModelData() 的实例，通常用于存储应用的数据模型。你可以把它看作是一个数据源，当数据更新时，依赖这些数据的视图（比如通过 .environment(modelData) 传递给子视图的 ContentView）会自动刷新。
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
