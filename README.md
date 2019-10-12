(English version below)

Voici le projet web de l'équipe TheRockets, formée du chef d'équipe Jonathan Fortin-Dominguez, et de Steve Drolet-Toutant, Misa Rakotoniaina et Jean-François Maheux.

Site web : http://www.rocketelevatorquebec.site/

Site Admin : http://www.rocketelevatorquebec.site/admin
Email : nicolas.genest@codeboxx.biz
Mdp : 123456

Le site présenté a été développé via l'application Ruby On Rails. Une mise en page aérée et au couleur de Rocket Elevators présente une interface informative aux visiteurs, leur offrant la possibilité de de créer un compte et permettre aux dirigeants de Rocket Elevator de distribuer de l'information à la clientèle et ainsi augmenter la publicité directe.

Une section administrative (Back Office), gérée et accessible par les employés, permet de voir en un clin d'œil les commandes entrantes, la gestion de dossier et les droits d'usagers. Ce site optimisé et sécuritaire est l'outil parfait pour faire face à la concurrence et augmenter le rendement de l'entreprise. 

Visitez la section Quotes et ayez accès aux commandes en un coup d'œil, aux formulaires remplis sur le site et aux contrats à venir.

La section Users vous permet de voir votre clientèle, de gérer leurs accès et leur courriel.

La section des Employees vous donne accès aux User Id, Nom, prénom, Titre, email et mot de passe, en plus de permettre la gestion de dossier et des clients.

Le Backoffice du site est sécurisé derrière une page d’authentification qui se valide à l’aide de la table Employees.

Détails techniques à la fin du document.


-----------------------------


Here is the website project from TheRockets team, formed by team leader Jonathan Fortin-Dominguez, and teamate Steve Drolet-Toutant, Misa Rakotoniaina and Jean-François Maheux.

Website : http://www.rocketelevatorquebec.site/

Admin User : http://www.rocketelevatorquebec.site/admin
Email : nicolas.genest@codeboxx.biz
PW : 123456


The site presented has been developed via the Ruby On Rails application. Rocket Elevators presents an informative interface for visitors, which allows to create an account easily mangeable by Rocket Elevators leaders.

An administrative section (Back Office), managed and accessible by the employees, takes it possible to see the incoming orders, the edition of files and the rights of users. This site is optimized and secure.  

Visit the Quotes section and have access to orders at a glance, web forms and future contracts.

The Users section allows you to see your customers, manage their access and email.

The Employee section gives you access to User IDs, Last Name, First Name, Title, Email and Password, as well as file and client management.

Backoffice of the Site is secure behind an authentication page that is valid using the Employees table.


Technical details:


ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby


gem 'jquery-rails'

gem 'jquery-cdn', '~> 3.3', '>= 3.3.1'

gem 'bootstrap-tooltip-rails'
gem 'bootstrap-sass'
gem 'bootstrap-social-rails'

gem "font-awesome-rails"
gem 'font-awesome-sass'
#gem 'jquery-ui-rails'



# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'faker'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# rails admin
gem 'rails_admin', '~> 2.0'

#rollin code
gem 'rails_admin_rollincode', '~> 1.0'

# devise
gem 'devise'

gem 'cancan'

