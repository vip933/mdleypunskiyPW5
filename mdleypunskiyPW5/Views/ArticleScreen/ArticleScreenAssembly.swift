//
//  ArticleScreenAssembly.swift
//  mdleypunskiyPW5
//
//  Created by Maksim on 10.11.2021.
//

import UIKit

final class ArticleScreenAssembly {
    static func build() -> UIViewController {
        let vc = ArticleScreenViewController()
        let interactor = ArticleScreenInteractor()
        let presenter = ArticleScreenPresenter()
        let worker = ArticleScreenWorker()
        worker.interactor = interactor
        presenter.viewController = vc
        interactor.presenter = presenter
        interactor.worker = worker
        vc.interactor = interactor
        return vc
    }
}
