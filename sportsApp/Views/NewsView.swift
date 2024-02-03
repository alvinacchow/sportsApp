//
//  NewsView.swift
//  sportsApp
//
//  Created by Alvina Chow on 2/3/24.
//


import SwiftUI
import NewsAPI

struct NewsView: View {
    let client = NewsAPI(apiKey: "34e6e0c87004407ea4a8956b1db5d848")
    
    @State private var articles: [NewsArticle] = []
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach(articles, id: \.url) { article in
                    Text(article.title ?? "Image Not Available")
                    
                    
                }

            }
            .onAppear {
                // Fetch news articles when the view appears
                fetchNewsArticles()
            }
        }
    }
    
    func fetchNewsArticles() {
        Task {
            do {
                // Fetch top headlines
                //let fetchedArticles = try await client.getTopHeadlines(
                let fetchedArticles = try await client.search(
                    query: "Womens sports OR Women athletes OR Female athletes OR Womens basketball OR Womens soccer OR Womens tennis OR Womens golf OR Womens athletics OR Womens sports events OR Womens sports news OR Womens sports updates OR Womens sports leagues OR Womens sports competitions OR Women in sports OR Womens sports empowerment OR Womens sports breakthroughs OR Womens sports records OR Womens sports milestones OR Womens sports championships")
//                    query: "Womens sports OR athletes OR Womens basketball OR Womens soccer OR Womens tennis OR Womens golf OR Womens athletics OR Womens sports events OR Womens sports news OR Womens sports updates OR Womens sports leagues OR Womens sports competitions OR Women in sports OR Womens sports empowerment OR Womens sports breakthroughs OR Womens sports records OR Womens sports milestones OR Womens sports championships")
//                    query: "womens sports, female athletics",
//                    category: NewsSourceCategory.sports,
//                    language: Language.en
                // Update the state with fetched articles
                articles = fetchedArticles
            } catch {
                print("Error fetching top headlines: \(error)")
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
