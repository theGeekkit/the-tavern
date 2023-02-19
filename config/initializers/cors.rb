Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'localhost:4400'
      resource '*', headers: :any, methods: [:get, :post]
    end
  end