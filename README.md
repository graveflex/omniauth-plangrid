# Omniauth::Plangrid

This gem contains the PlanGrid strategy for OmniAuth.

For more information see PlanGrids OAuth api: https://developer.plangrid.com

How To Use It
-------------

You can pull them in directly from github e.g.:

    gem "omniauth-plangrid", :git => "git://github.com/graveflex/omniauth-plangrid.git"

>> Note: Gem will be published to rubygems soon.

Once you've installed the Gem you need to add the following to your `config/initializers/omniauth.rb`:

```ruby
    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :plan_grid, 'consumer_key', 'consumer_secret',  redirect_uri: "http://www.mysite.com/callback"
    end
```

You will need input the oauth key and secret you received from PlanGrid. Also, be sure to include the redirect url that should be called once the strategy completes.

After you have the gem running and the configuration is done, you can get to the follow url to log the user in:

  http://localhost:3000/auth/plangrid

For more details follow the README at: https://github.com/intridea/omniauth

Questions
---------
If you have any questions or bugs to report please create an issue on this repo!

