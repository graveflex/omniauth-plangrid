require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class PlanGrid < OmniAuth::Strategies::OAuth2
      option :name, 'plangrid'
      option :scope, 'write:projects,read:profile'

      option :client_options, {
        site: 'https://io.plangrid.com/',
        authorize_url: 'https://io.plangrid.com/oauth/authorize',
        token_url: 'https://io.plangrid.com/oauth/token'
      }
      option :authorize_options, {
        response_type: 'code'
      }

      uid{ raw_info['uid'] }

      info do
        {
          first_name: raw_info['first_name'],
          last_name: raw_info['last_name'],
          company: raw_info['company'],
          email: raw_info['email'],
          image: raw_info['photo_url']
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/me', {
            headers: {
              'Accept': 'application/vnd.plangrid+json; version=1'
            }
          }).parsed || {}
      end

      def callback_url
        options[:redirect_uri]
      end

    end
  end
end
