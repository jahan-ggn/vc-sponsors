# frozen_string_literal: true

# name: vc-sponsors
# about: TODO
# meta_topic_id: TODO
# version: 0.0.1
# authors: Discourse
# url: TODO
# required_version: 2.7.0

enabled_site_setting :vc_sponsors_enabled

module ::VcSponsors
  PLUGIN_NAME = "vc-sponsors"
end

require_relative "lib/vc_sponsors/engine"

after_initialize do
  # Code which should run after Rails has finished booting
end
