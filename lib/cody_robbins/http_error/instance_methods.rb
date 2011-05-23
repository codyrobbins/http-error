# encoding: UTF-8

module CodyRobbins
  module HttpError
    module InstanceMethods
      protected

      # Returns the specified HTTP code in the action’s response, renders the correspondingly named HTML error document in `public`, and returns `false`. If a corresponding HTML error document doesn’t exist, you’ll probably get some sort of exception.
      #
      # @param code [Integer] The HTTP status code to return—for example, 404.
      # @return [boolean] Returns `false` in order to halt any filter chain it may be invoked from.
      #
      # @example The following will return a 404 HTTP code, render `public/404.html`, and halt the filter chain so that `@user.destroy!` is never executed.
      #    class UserController < ApplicationController
      #      before_filter(:get_user)
      #
      #      def delete
      #        @user.destroy
      #      end
      #
      #      protected
      #
      #      def get_user
      #        @user = User.find_by_id(params[:id])
      #        http_error(404) unless @user
      #      end
      #    end
      def http_error(code)
        render(:file => Rails.root.join('public', "#{code}.html"),
               :layout => false,
               :status => code)
        return(false)
      end
    end
  end
end
