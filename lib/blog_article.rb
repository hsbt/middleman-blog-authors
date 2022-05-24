module Middleman
  module Blog
    module BlogArticle
      def authors
        author_permalinks.map{|permalink| @app.blog_authors_data[permalink]}
      end

      def author_permalinks
        data.authors ? data.authors.map{|author| Middleman::BlogAuthors::AuthorPages.permalink(author.name.to_s.strip)} : []
      end

      def author_names
        data.authors ? data.authors.map{|author| author.name.to_s.strip } : []
      end
    end
  end
end