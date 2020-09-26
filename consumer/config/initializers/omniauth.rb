require 'doorkeeper'

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :doorkeeper, 
        "69QNnIh9UJK_UHnsLXloy_b_mEUjIDhLMjXL5FxA0hs", 
        "mOJ8111C6NkQ1R5jdjhpkxTL23-KZy5aP2CwFi5C2Dc"
end