//
//  Router.swift
//  MyCake
//
//  Created by Петр Постников on 01.08.2022.
//

import UIKit

protocol RouterProtocol: Presentable, AnyObject {
    
    // Present module
    func present(_ module: Presentable?)
    func present(_ module: Presentable?, animated: Bool)
    func present(_ module: Presentable?, animated: Bool, completion: (() -> Void)?)
    
    // Dismiss module
    func dismissModule()
    func dismissModule(animated: Bool, completion: (() -> Void)?)
    
    // Push module
    func push(_ module: Presentable?)
    func push(_ module: Presentable?, hideBottomBar: Bool)
    func push(_ module: Presentable?, animated: Bool)
    func push(_ module: Presentable?, animated: Bool, completion: (() -> Void)?)
    func push(_ module: Presentable?, animated: Bool, hideBottomBar: Bool, completion: (() -> Void)?)
    
    // Set root module
    func setRootModules(_ modules: [Presentable?])
    func setRootModules(_ modules: [Presentable?], hideBar: Bool)
    func setRootModules(_ modules: [Presentable?], hideBar: Bool, animated: Bool)
    
    // Pop module
    func popModule()
    func popModule(animated: Bool)
    
    // Pop to root module
    func popToRootModule(animated: Bool)
}

final class Router: NSObject, RouterProtocol {
    
    private weak var rootController: UINavigationController?
    private var completions: [UIViewController: () -> Void]
    
    init(rootController: UINavigationController) {
        self.rootController = rootController
        self.completions = [:]
    }
    
    func toPresent() -> UIViewController? {
        return rootController
    }
    
    // MARK: present module
    func present(_ module: Presentable?) {
        present(module, animated: true)
    }
    
    func present(_ module: Presentable?, animated: Bool) {
        present(module, animated: true, completion: nil)
    }
    
    func present(_ module: Presentable?, animated: Bool, completion: (() -> Void)?) {
        guard let controller = module?.toPresent() else { return }
        rootController?.present(controller, animated: animated, completion: completion)
    }
    
    // MARK: Dismiss module
    func dismissModule() {
        dismissModule(animated: true, completion: nil)
    }
    
    func dismissModule(animated: Bool, completion: (() -> Void)?) {
        rootController?.dismiss(animated: animated, completion: completion)
    }
    
    // MARK: Push module
    func push(_ module: Presentable?) {
        push(module, animated: true)
    }
    
    func push(_ module: Presentable?, hideBottomBar: Bool) {
        push(module, animated: true, hideBottomBar: hideBottomBar, completion: nil)
    }
    
    func push(_ module: Presentable?, animated: Bool) {
        push(module, animated: animated, completion: nil)
    }
    
    func push(_ module: Presentable?, animated: Bool, completion: (() -> Void)?) {
        push(module, animated: animated, hideBottomBar: false, completion: completion)
    }
    
    func push(_ module: Presentable?, animated: Bool, hideBottomBar: Bool, completion: (() -> Void)?) {
        guard let controller = module?.toPresent(), (controller is UINavigationController == false) else {
            assertionFailure("Deprecated push UINavigationController.")
            return }
        if let completion = completion {
            completions[controller] = completion
        }
        controller.hidesBottomBarWhenPushed = hideBottomBar
        rootController?.pushViewController(controller, animated: animated)
    }
    
    // MARK: Set root modules
    func setRootModules(_ modules: [Presentable?]) {
        setRootModules(modules, hideBar: false, animated: false)
    }
    
    func setRootModules(_ modules: [Presentable?], hideBar: Bool) {
        setRootModules(modules, hideBar: hideBar, animated: false)
    }
    
    func setRootModules(_ modules: [Presentable?], hideBar: Bool, animated: Bool) {
        let controllers = modules.compactMap { $0?.toPresent() }.compactMap { $0 }
        guard !controllers.isEmpty else { return }
        rootController?.setViewControllers(controllers, animated: true)
        rootController?.isNavigationBarHidden = hideBar
    }
    
    // MARK: Pop module
    func popModule() {
        popModule(animated: true)
    }
    
    func popModule(animated: Bool) {
        if let controller = rootController?.popViewController(animated: animated) {
            runCompletion(for: controller)
        }
    }
    
    // MARK: Pop to root module
    func popToRootModule(animated: Bool) {
        if let controllers = rootController?.popToRootViewController(animated: animated) {
            controllers.forEach { controller in
                runCompletion(for: controller)
            }
        }
    }
}

extension Router {
    
    private func runCompletion(for controller: UIViewController) {
        guard let completion = completions[controller] else { return }
        completion()
        completions.removeValue(forKey: controller)
    }
}
