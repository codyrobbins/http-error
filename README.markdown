HTTP Error for Rails
====================

This Rails plugin makes an `http_error` method available in `ApplicationController` which

* returns the specified HTTP code in the response,
* renders the correspondingly named HTML error document in `public`, and
* returns `false`.

Returning `false` allows you to use `http_error` in `before_filter`’s to halt the filter chain.

Example
--------

The following will return a 404 HTTP code, render `public/404.html`, and halt the filter chain so that `@user.destroy!` is never executed.

    class UserController < ApplicationController
      before_filter(:get_user)

      def delete
        @user.destroy
      end

      protected

      def get_user
        @user = User.find_by_id(params[:id])
        http_error(404) unless @user
      end
    end

Tested with
-----------

* Rails 3.0.5 — 20 May 2011

Credits
-------

© 2011 [Cody Robbins](http://codyrobbins.com/)

* [Homepage](http://codyrobbins.com/software/http-error)
* [Follow me on Twitter](http://twitter.com/codyrobbins)