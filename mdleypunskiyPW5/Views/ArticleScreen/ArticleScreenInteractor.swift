//
//  ArticleScreenInteractor.swift
//  mdleypunskiyPW5
//
//  Created by Maksim on 10.11.2021.
//

import UIKit

protocol ArticleScreenBusinessLogic: AnyObject {
    func loadFreshNews(request: ArticleScreenModels.Article.Request)
    func loadMoreNews(request: ArticleScreenModels.Article.Request)
}

protocol ArticleScreenDataStore: AnyObject {
    typealias ArticleModel = ArticleScreenModels.Article.ArticleModel
    var articles: [ArticleModel]? { get set }
}

final class ArticleScreenInteractor: ArticleScreenBusinessLogic, ArticleScreenDataStore {
    var articles: [ArticleModel]? = [] {
        didSet {
            presenter?.presentNews()
        }
    }
    
    var presenter: ArticleScreenPresentationLogic?
    var dataStore: ArticleScreenDataStore?
    var worker: ArticleScreenWorker?
    
    func loadMoreNews(request: ArticleScreenModels.Article.Request) {
    }
    
    func loadFreshNews(request: ArticleScreenModels.Article.Request) {
    }
    
}

