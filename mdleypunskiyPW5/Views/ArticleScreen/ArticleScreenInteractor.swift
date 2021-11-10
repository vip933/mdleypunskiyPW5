//
//  ArticleScreenInteractor.swift
//  mdleypunskiyPW5
//
//  Created by Maksim on 10.11.2021.
//

import UIKit

protocol ArticleScreenBusinessLogic: AnyObject {
    func loadFreshNews()
    func loadMoreNews()
}

protocol ArticleScreenDataStore: AnyObject {
    
}

final class ArticleScreenInteractor: ArticleScreenBusinessLogic, ArticleScreenDataStore {
    
    var presenter: ArticleScreenPresentationLogic?
    var dataStore: ArticleScreenDataStore?
    
    func loadMoreNews() {
        
    }
    
    func loadFreshNews() {
        
    }
    
}

