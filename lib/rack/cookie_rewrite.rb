# coding: utf-8

module Rack
  # Rack middleware to add an alternate header for Cookies.
  class CookieRewrite
    def initialize(app, prefix)
      @app = app
      @prefix = prefix
    end

    def call(env)
      (cookie = env["HTTP_X_#{@prefix}_COOKIE"]) &&
        (env['HTTP_COOKIE'] = cookie)

      status, headers, body = @app.call(env)

      (cookie = headers['Set-Cookie']) &&
        headers["X-#{@prefix}-Set-Cookie"] = cookie

      [status, headers, body]
    end
  end
end
