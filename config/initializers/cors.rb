Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
<<<<<<< HEAD
    origins ["https://nils-task-creator-app.herokuapp.com/", "http://localhost:3000"]
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
=======
    origins ["http://localhost:3000", "https://nils-task-creator-app.herokuapp.com/"]
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
>>>>>>> deploy
  end
end





