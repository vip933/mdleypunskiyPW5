//
//  ArticleScreenModels.swift
//  mdleypunskiyPW5
//
//  Created by Maksim on 10.11.2021.
//

import UIKit

enum ArticleScreenModels {
    enum Article {
        struct Requast {}
        struct Response {}
        
        struct ViewModel {}
        
        struct ArticlePage: Decodable {
            var news: [ArticleModel]?
            var requestId: String?
            
            mutating func passTheRequestId() {
                for i in 0..<(news?.count ?? 0) {
                    news?[i].requestId = requestId
                }
            }
        }
        
        struct ArticleModel: Decodable {
            var newsId: Int?
            var titile: String?
            var announce: String?
            var img: ImageContainer?
            var requestId: String?
            
            var articleUrl: URL? {
                let requestId = requestId ?? ""
                let newsId = newsId ?? 0
                return URL(string: "https://news.myseldon.com/ru/news/index/\(newsId)?requestId=\(requestId)")
            }
        }
        
        struct ImageContainer: Decodable {
            var url: URL?
        }
    }
}
