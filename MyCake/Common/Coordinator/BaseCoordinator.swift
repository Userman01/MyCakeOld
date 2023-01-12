//
//  BaseCoordinator.swift
//  MyCake
//
//  Created by Петр Постников on 01.08.2022.
//

protocol CoordinatorProtocol: AnyObject {
    func start()
    func start(with option: DeepLinkOption?)
}

class BaseCoordinator: CoordinatorProtocol {
    
    var childCoordinator: [CoordinatorProtocol] = []
    
    func start() {
        start(with: nil)
    }
    
    func start(with option: DeepLinkOption?) {}
    
    func addDependendency(_ coordinator: CoordinatorProtocol) {
        guard !childCoordinator.contains(where: { $0 === coordinator }) else { return }
        childCoordinator.append(coordinator)
    }
    
    func removeDependency(_ coordinator: CoordinatorProtocol?) {
        guard !childCoordinator.isEmpty, let coordinator = coordinator else { return }
        
        if let coordinator = coordinator as? BaseCoordinator, !coordinator.childCoordinator.isEmpty {
            coordinator.childCoordinator
                .filter { $0 !== coordinator}
                .forEach { coordinator.removeDependency($0) }
        }
        
        for (index, element) in childCoordinator.enumerated() where element === coordinator {
            childCoordinator.remove(at: index)
            break
        }
    }
}
