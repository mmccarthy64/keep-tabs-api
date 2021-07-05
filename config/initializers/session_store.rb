if Rails.env === 'production'
    Rails.application.config.session_store :cookie_store, key: '_keep_tabs', domain: 'keep-tabs-react.herokuapp.com'
else
    Rails.application.config.session_store :cookie_store, key: '_keep_tabs'
end