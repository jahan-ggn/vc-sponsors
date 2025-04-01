# frozen_string_literal: true

# name: vc-sponsors
# about: A plugin to manage and display VC community sponsor logos with ease.
# version: 0.0.1
# authors: Jahan Gagan
# url: https://github.com/jahan-ggn/vc-sponsors

enabled_site_setting :VC_sponsors_enabled

module ::VcSponsors
  PLUGIN_NAME = "vc-sponsors"
end

require_relative "lib/vc_sponsors/engine"

register_asset "stylesheets/common/common.scss"
register_asset "stylesheets/desktop/desktop.scss", :desktop
register_asset "stylesheets/mobile/mobile.scss", :mobile

after_initialize do
  # Code which should run after Rails has finished booting
end
