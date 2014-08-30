# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.

  config = YAML::load_file('./config.yml')
  config['env'].each{|k,v| ENV[k] = v.to_s}

  app.name = "demo-aviary"
  app.version = "1.0"
  app.short_version = "1.0"

  app.info_plist['UIMainStoryboardFile'] = 'Main'


  # app.identifier = config['app']['identifier']  
  # app.testflight.api_token  = config['testflight']['api_token']
  # app.testflight.team_token = config['testflight']['team_token']

  # app.pods do
  #   pod 'SVProgressHUD'
  # end

  app.vendor_project('vendor/AviarySDK.framework',:static,
    :products => ['AviarySDK'],:headers_dir => 'Headers',
    :cflags => '-ObjC -all_load -fobjc-arc'
  )

  app.frameworks += %w(Accelerate Accelerate Foundation MessageUI
    OpenGLES QuartzCore StoreKit UIKit)
  app.libs += %w(/usr/lib/libsqlite3.0.dylib /usr/lib/libz.1.2.5.dylib)

  # app.icons = ["Icon.png", "Icon-72.png", "Icon@2x.png"] 
  # app.prerendered_icon = false

  app.device_family = [:ipad]
  app.interface_orientations = [:portrait]  

  # app.sdk_version = "7.0" 

end
