module BookmarkManager
  module Routes
    class Links < Base

      post '/links' do
        url = params['url']
        title = params['title']
        tags = params['tags'].split(' ')
        tags.map do |tag| 
          Tag.first_or_create(text: tag)
          Link.create(url: url, title: title, tags: )
        end

        redirect to('/')
      end

    end
  end
end
