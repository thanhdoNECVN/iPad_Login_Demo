//
//  UIViewController+Extension.swift
//  SJISIpadEOB
//
//  Created by NECVN on 2022/01/20.
//

import UIKit

// MARK: - Properties
var vSpinner : UIView?
public extension UIViewController {
    
    /// Either the viewcontroller is visible or not.
    var isVisible: Bool {
        self.isViewLoaded && view.window != nil
    }
    
}

// MARK: - Methods

public extension UIViewController {
    
    
    /// Instantiate a view controller from its corresponding nib
    /// - Returns: Return a view controller instance
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }
        return instantiateFromNib()
    }
    
    /// Assign as listener to notification.
    ///
    /// - Parameters:
    ///   - name: notification name.
    ///   - selector: selector to run with notified.
    func addNotificationObserver(name: Notification.Name, selector: Selector) {
        NotificationCenter.default.addObserver(self, selector: selector, name: name, object: nil)
    }
    
    /// Unassign as listener to notification.
    ///
    /// - Parameter name: notification name.
    func removeNotificationObserver(name: Notification.Name) {
        NotificationCenter.default.removeObserver(self, name: name, object: nil)
    }
    
    /// Unassign as listener from all notifications.
    func removeNotificationsObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    /// Add a child view controller
    ///
    /// - Parameter chilController: The child view controller to add
    func install(_ child: UIViewController, toContainerView containerView: UIView) {
        addChild(child)
        containerView.addSubview(child.view)
        child.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            child.view.topAnchor.constraint(equalTo: containerView.topAnchor),
            child.view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            child.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
        ])
        child.didMove(toParent: self)
    }
    
    /// Remove from the parent view controller
    func uninstall() {
        guard parent != nil else {
            return
        }
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
    
    // ===========================
    // show loading spinner
//    // ===========================
    func showSpinner(onView : UIView) {
        let spinnerView = LoadingView(frame: view.bounds)
        spinnerView.tag = constValue.keySpinnerView
        DispatchQueue.main.async {
            let foundView = onView.viewWithTag(constValue.keySpinnerView)
            if foundView == nil {
                onView.addSubview(spinnerView)
                spinnerView.center = onView.center
                vSpinner = spinnerView
            }
        }
    }
    
    // ===========================
    // remove spinner
    // ===========================
    func removeSpinner() {
        DispatchQueue.main.async {
            vSpinner?.removeFromSuperview()
            vSpinner = nil
        }
    }
}
