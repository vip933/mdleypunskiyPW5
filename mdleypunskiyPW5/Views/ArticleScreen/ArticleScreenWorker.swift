//
//  ArticleScreenWorker.swift
//  mdleypunskiyPW5
//
//  Created by Maksim on 10.11.2021.
//

import UIKit


final class ArticleScreenWorker {
    typealias ArticlePage = ArticleScreenModels.Article.ArticlePage
    
    var interactor: (ArticleScreenBusinessLogic & ArticleScreenDataStore)?
    
    private func getURL(_ rubric: Int, _ pageIndex: Int) -> URL? {
        return URL(string: "https://news.myseldon.com/api/Section?rubricId=\(rubric)&pageSize=8&pageIndex=\(pageIndex)")
    }
    
    // MARK: - Fetch news
    private func fetchNews() {
        guard let url = getURL(4, 1) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            if let data = data {
                var articlePage = try?
                    JSONDecoder().decode(ArticlePage.self, from: data)
                articlePage?.passTheRequestId()
                self.interactor?.articles = articlePage?.news
            }
        }
    }
}
