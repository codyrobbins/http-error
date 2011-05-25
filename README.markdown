HTTP Error
==========

This Rails plugin makes an `http_error` method available in `ApplicationController` which

* returns the specified HTTP code in the response,
* renders the correspondingly named HTML error document in `public`, and
* returns `false`.

Returning `false` allows you to use `http_error` in `before_filter`’s to halt the filter chain.

Full documentation is at [RubyDoc.info](http://rubydoc.info/gems/http-error).

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

Colophon
--------

### See also

If you like this gem, you may also want to check out [Declarative Find](http://codyrobbins.com/software/declarative-find), [Create New](http://codyrobbins.com/software/create-new), and [Save Changes To](http://codyrobbins.com/software/save-changes-to).

### Tested with

* Rails 3.0.5 — 20 May 2011

### Contributing

* [Source](https://github.com/codyrobbins/http-error)
* [Bug reports](https://github.com/codyrobbins/http-error/issues)

To send patches, please fork on GitHub and submit a pull request.

### Credits

© 2011 [Cody Robbins](http://codyrobbins.com/). See LICENSE for details.

* [Homepage](http://codyrobbins.com/software/http-error)
* [My other gems](http://codyrobbins.com/software#gems)
* [Follow me on Twitter](http://twitter.com/codyrobbins)