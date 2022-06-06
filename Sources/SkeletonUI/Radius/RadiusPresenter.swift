#if arch(x86_64) || arch(arm64)

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
final class RadiusPresenter: ObservableObject {
    @Published var animation: Animation?
    @Published var value: CGFloat = .zero
    @Published var range: ClosedRange<CGFloat> = 1 ... 40
}

#endif
