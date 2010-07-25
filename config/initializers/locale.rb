require 'globalize'
ActiveRecord::Base.send :include, ActiveRecord::GlobalizeAccessors

I18n.default_locale = :en