WARBLER_CONFIG = {"public.root"=>"/", "rails.env"=>"development", "jruby.compat.version"=>"2.0.0", "jruby.min.runtimes"=>"1", "jruby.max.runtimes"=>"1"}

if $servlet_context.nil?
  ENV['GEM_HOME'] = File.expand_path('../../WEB-INF', __FILE__)

  ENV['BUNDLE_GEMFILE'] = File.expand_path('../../WEB-INF/Gemfile', __FILE__)

else
  ENV['GEM_HOME'] = $servlet_context.getRealPath('/WEB-INF/gems')

  ENV['BUNDLE_GEMFILE'] ||= $servlet_context.getRealPath('/WEB-INF/Gemfile')

end
ENV['BUNDLE_WITHOUT'] = 'development:test:assets'

ENV['RAILS_ENV'] ||= 'development'
