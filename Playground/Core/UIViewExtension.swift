//
//  UIViewExtension.swift
//  Playground
//
//  Created by Kabir Asani on 03/08/24.
//

import UIKit

extension UIView {
	func enableAutoLayout() {
		self.translatesAutoresizingMaskIntoConstraints = false
	}
}

extension UIView {
	func pin(
		toTopOf view: UIView,
		withInset inset: Double = .zero,
		byBeingSafeAreaAware safeAreaEnabled: Bool = true
	) {
		NSLayoutConstraint.activate([
			self.topAnchor.constraint(
				equalTo: safeAreaEnabled ? view.safeAreaLayoutGuide.topAnchor : view.topAnchor,
				constant: inset
			)
		])
	}
	
	func pin(
		toBottomOf view: UIView,
		withInset inset: Double = .zero,
		byBeingSafeAreaAware safeAreaEnabled: Bool = true
	) {
		NSLayoutConstraint.activate([
			self.bottomAnchor.constraint(
				equalTo: safeAreaEnabled ? view.safeAreaLayoutGuide.bottomAnchor : view.bottomAnchor,
				constant: inset
			)
		])
	}
	
	func pin(
		toLeftOf view: UIView,
		withInset inset: Double = .zero,
		byBeingSafeAreaAware safeAreaEnabled: Bool = true
	) {
		NSLayoutConstraint.activate([
			self.leadingAnchor.constraint(
				equalTo: safeAreaEnabled ? view.safeAreaLayoutGuide.leadingAnchor : view.leadingAnchor,
				constant: inset
			)
		])
	}
	
	func pin(
		toRightOf view: UIView,
		withInset inset: Double = .zero,
		byBeingSafeAreaAware safeAreaEnabled: Bool = true
	) {
		NSLayoutConstraint.activate([
			self.trailingAnchor.constraint(
				equalTo: safeAreaEnabled ? view.safeAreaLayoutGuide.trailingAnchor : view.trailingAnchor,
				constant: inset
			)
		])
	}
	
	func pin(
		verticallySymmetricTo view: UIView,
		withInset inset: Double = .zero,
		byBeingSafeAreaAware safeAreaEnabled: Bool = true
	) {
		pin(
			toTopOf: view,
			withInset: inset,
			byBeingSafeAreaAware: safeAreaEnabled
		)
		pin(
			toBottomOf: view,
			withInset: -inset,
			byBeingSafeAreaAware: safeAreaEnabled
		)
	}
	
	func pin(
		horizontallySymmetricTo view: UIView,
		withInset inset: Double = .zero,
		byBeingSafeAreaAware safeAreaEnabled: Bool = true
	) {
		pin(
			toLeftOf: view,
			withInset: inset,
			byBeingSafeAreaAware: safeAreaEnabled
		)
		pin(
			toBottomOf: view,
			withInset: -inset,
			byBeingSafeAreaAware: safeAreaEnabled
		)
	}
	
	func pin(
		to view: UIView,
		withInsets insets: UIEdgeInsets = .zero,
		byBeingSafeAreaAware safeAreaEnabled: Bool = false
	) {
		pin(
			toTopOf: view,
			withInset: insets.top,
			byBeingSafeAreaAware: safeAreaEnabled
		)
		pin(
			toBottomOf: view,
			withInset: insets.bottom,
			byBeingSafeAreaAware: safeAreaEnabled
		)
		pin(
			toLeftOf: view,
			withInset: insets.left,
			byBeingSafeAreaAware: safeAreaEnabled
		)
		pin(
			toRightOf: view,
			withInset: insets.right,
			byBeingSafeAreaAware: safeAreaEnabled
		)
	}
}
