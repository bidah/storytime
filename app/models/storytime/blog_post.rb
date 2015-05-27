module Storytime
  class BlogPost < Post
    include Storytime::PostComments
    include Storytime::PostExcerpt
    include Storytime::PostFeaturedImages
    belongs_to :blog, class_name: "Storytime::Blog"

    paginates_per 9

    def blog_post_types
      Storytime.post_types.map{|post_type| post_type.constantize }.select do |post_type|
        post_type.is_a?(Storytime::BlogPost)
      end
    end

  end
end