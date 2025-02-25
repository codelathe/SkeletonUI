#if arch(x86_64) || arch(arm64)

import Combine
import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol SkeletonInteractable: AnyObject {
    var presenter: SkeletonPresenter { get }
    var shape: ShapeInteractable { get }
    var multiline: MultilineInteractable { get }
    var appearance: AppearanceInteractable { get }
    var animation: AnimationInteractable { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
final class SkeletonInteractor: SkeletonInteractable {
    let presenter: SkeletonPresenter
    let shape: ShapeInteractable
    let multiline: MultilineInteractable
    let appearance: AppearanceInteractable
    let animation: AnimationInteractable

    init(_ loading: Bool, size: CGSize?, transition: AnyTransition?, animated: Animation?, shape: ShapeInteractable = ShapeInteractor(), multiline: MultilineInteractable = MultilineInteractor(), appearance: AppearanceInteractable = AppearanceInteractor(), animation: AnimationInteractable = AnimationInteractor()) {
        presenter = SkeletonPresenter(loading, size: size, transition: transition, animated: animated)
        self.shape = shape
        self.multiline = multiline
        self.appearance = appearance
        self.animation = animation
    }
}

#endif
