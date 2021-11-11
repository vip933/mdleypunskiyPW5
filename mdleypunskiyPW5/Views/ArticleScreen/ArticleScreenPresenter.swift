//
//  ArticleScreenPresenter.swift
//  mdleypunskiyPW5
//
//  Created by Maksim on 10.11.2021.
//

import UIKit

protocol ArticleScreenPresentationLogic {
    func presentNews()
}

final class ArticleScreenPresenter: ArticleScreenPresentationLogic {
    weak var viewController: ArticleScreenDisplayLogic?
    
    func presentNews() {
        
    }
}
