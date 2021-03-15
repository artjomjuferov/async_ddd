module OmniAuth
  module Strategies
    class Keepa < OmniAuth::Strategies::OAuth2
      option :name, :Keepa

      option :client_options, {
        site: 'http://localhost:3000/oauth/authorize',
        authorize_url: 'http://localhost:3000/oauth/authorize'
      }

      uid { raw_info['public_id'] }

      info do
        {
          email => raf_info['email'],
          full_name => raf_info['full_name'],
          position => raf_info['position'],
          active => raf_info['active'],
          role => raf_info['role'],
          public_id => raf_info['public_id']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/accounts/current').parsed
      end
    end
  end
end
