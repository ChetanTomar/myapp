# README

* Create anguar2 setup structure using this command 

 ```ruby
    bin/rails generate frontend angular2
 ```

* Now install Gems
 
 ```ruby
  bundle install
 ```
 

* Add helper method to app/helpers/application_helper.rb
  ```ruby
    def webpack_script_for(bundle)
	    path = Rails.root.join("angular2-frontend", "webpack-assets.json")
	    file = File.read(path)
	    json = JSON.parse(file)
	    content_tag(:script, "", {src: json[bundle]["js"]})
    end
  ```

* Call this helper method from the layout where you want to add anguar2 frontend. In our case we added at **app/views/layouts/application.html.erb**
  ```erb
    <app>Loading...</app>
    <%= webpack_script_for("common") %>
    <%= webpack_script_for("vendor") %>
    <%= webpack_script_for("app") %>
  ```

* Set a root path with home controller

  ```ruby
    rails g controller home index
  ```  

 	config/routes.rb
   ```ruby
     root 'home#index'
   ```
