class FrontendGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def copy_nodejs_supporting_files
    copy_file "package.json"
    copy_file "tsconfig.json"
    copy_file "tsd.json"
    copy_file "webpack.config.js"
  end

  def copy_angular2_structure
  	directory 'angular2-frontend'
  end

  def add_required_gems_in_gemfile
  	insert_into_file "Gemfile", :after => "source 'https://rubygems.org'\n" do
		"\ngem 'bootstrap-sass', '~> 3.3.6'\ngem 'rabl'\ngem 'font-awesome-rails'"
  	end	
  end  

end
