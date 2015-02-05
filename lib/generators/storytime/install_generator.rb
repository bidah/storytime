require 'rails/generators/base'

module Storytime
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a Storytime initializer for your application."

      def set_local_assigns
        @layout = 'application'
        @user_class = 'User'
        @dashboard_namespace_path = '/storytime'
        @home_page_path = '/'
        @post_types = ['CustomPostType']
        @post_title_character_limit = 255
        @post_excerpt_character_limit = 500
        @whitelisted_html_tags = '%w(p blockquote pre h1 h2 h3 h4 h5 h6 span ul li ol table tbody td br a img iframe hr)'
        @disqus_forum_shortname = ''
        @email_regexp = '/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/'
        @search_adapter = "''"
        @enable_file_upload = true
        @s3_bucket = 'my-s3-bucket'
        @prod_media_storage = ':s3'
        @dev_media_storage = ':file'
      end

      def copy_initializer
        template "storytime.rb", "config/initializers/storytime.rb"
      end

      def add_storytime_routes
        storytime_routes = 'mount Storytime::Engine => "/"'

        route storytime_routes
      end

      def show_readme
        readme "README" if behavior == :invoke
      end
    end
  end
end