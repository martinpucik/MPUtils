//
//  MPUInputAccessoryKeyboardView.swift
//  MPUtils
//
//  Created by Martin Pucik on 23/08/2018.
//

import Foundation

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: - CDCInputAccessoryKeyboardViewProtocol
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

protocol MPUInputAccessoryKeyboardViewProtocol: class {
    func keyboardFrameChanged(_ frame: CGRect)
}

class MPUInputAccessoryKeyboardView: UIView {

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Private Properties
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    private weak var delegate: MPUInputAccessoryKeyboardViewProtocol?
    private var centerObserver: NSKeyValueObservation?

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Lifecycle
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    init(delegate: MPUInputAccessoryKeyboardViewProtocol) {
        self.delegate = delegate
        super.init(frame: CGRect.zero)
        autoresizingMask = .flexibleHeight
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    deinit {
        centerObserver?.invalidate()
        centerObserver = nil
    }

    override var intrinsicContentSize: CGSize {
        return CGSize.zero
    }

    override func willMove(toSuperview newSuperview: UIView?) {
        if newSuperview == nil {
            centerObserver?.invalidate()
            centerObserver = nil
        } else {
            centerObserver = newSuperview?.observe(\.center, options: [.new], changeHandler: { [weak self] (view, _) in
                self?.delegate?.keyboardFrameChanged(view.frame)
            })
        }
    }
}
