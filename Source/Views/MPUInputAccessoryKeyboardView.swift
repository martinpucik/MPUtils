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

public protocol MPUInputAccessoryKeyboardViewProtocol: class {
    func keyboardFrameChanged(_ frame: CGRect)
}

public class MPUInputAccessoryKeyboardView: UIView {

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Private Properties
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    private weak var delegate: MPUInputAccessoryKeyboardViewProtocol?
    private var centerObserver: NSKeyValueObservation?

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Lifecycle
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    public init(delegate: MPUInputAccessoryKeyboardViewProtocol) {
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

    override public var intrinsicContentSize: CGSize {
        return CGSize.zero
    }

    override public func willMove(toSuperview newSuperview: UIView?) {
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
