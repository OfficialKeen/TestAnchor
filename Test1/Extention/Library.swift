//
//  Extention+Library.swift
//  zenwel
//
//  Created by KeenOI on 21/12/21.
//  Copyright © 2021 Olsera. All rights reserved.
//

import UIKit

extension UILabel {
    func setObject(completion: (UILabel) -> Void) {
        completion(self)
    }
}

extension UITextField {
    func setObject(completion: (UITextField) -> Void) {
        completion(self)
    }
}

extension UITextView {
    func setObject(completion: (UITextView) -> Void) {
        completion(self)
    }
}

extension UIImageView {
    func setObject(completion: (UIImageView) -> Void) {
        completion(self)
    }
}

extension UIStackView {
    func setObject(completion: (UIStackView) -> Void) {
        completion(self)
    }
}

extension UIButton {
    func setObject(completion: (UIButton) -> Void) {
        completion(self)
    }
}

extension UIView {
    func setObjectView(completion: (UIView) -> Void) {
        completion(self)
    }
}

extension UICollectionView {
    func setObject(completion: (UICollectionView) -> Void) {
        
    }
}
