require 'fastlane/action'
require_relative '../helper/clear_archived_data_helper'

module Fastlane
  module Actions
    class ClearArchivedDataAction < Action
      def self.run(params)
        UI.message("The clear_archived_data plugin is working!")
      end

      def self.description
        "Clears xcode archive folder"
      end

      def self.authors
        ["Onur Yıldırım"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Deletes the Archived data from path set on Xcode"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "CLEAR_ARCHIVED_DATA_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
