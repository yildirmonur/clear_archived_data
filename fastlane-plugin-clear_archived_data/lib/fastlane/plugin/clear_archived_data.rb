require 'fileutils'

module Fastlane
  module Actions
    module SharedValues
      CLEAR_ARCHIVED_DATA_CUSTOM_VALUE = :CLEAR_ARCHIVED_DATA_CUSTOM_VALUE
    end

    class ClearArchivedDataAction < Action
      def self.run(params)
        # fastlane will take care of reading in the parameter and fetching the environment variable:
        path = File.expand_path("~/Library/Developer/Xcode/Archives")
        UI.message("Archived Data path located at: #{path}")
        FileUtils.rm_rf(path) if File.directory?(path)
        UI.success("Successfully cleared Archived Data ♻️")

        # sh "shellcommand ./path"

        # Actions.lane_context[SharedValues::CLEAR_ARCHIVED_DATA_CUSTOM_VALUE] = "my_val"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Deletes the Xcode Archived Data"
      end

      def self.details
        # Optional:
        # this is your chance to provide a more detailed description of this action
        "Deletes the Archived Data from path set on Xcode or a supplied path"
      end

      def self.available_options
        # Define all options your action supports.

        # Below a few examples
        [
        FastlaneCore::ConfigItem.new(key: :api_token,
                                     env_name: "FL_CLEAR_ARCHIVED_DATA_API_TOKEN", # The name of the environment variable
                                     description: "API Token for ClearArchivedDataAction", # a short description of this parameter
                                     verify_block: proc do |value|
                                     UI.user_error!("No API token for ClearArchivedDataAction given, pass using `api_token: 'token'`") unless (value and not value.empty?)
                                     # UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(value)
                                     end),
                                     FastlaneCore::ConfigItem.new(key: :development,
                                                                  env_name: "FL_CLEAR_ARCHIVED_DATA_DEVELOPMENT",
                                                                  description: "Create a development certificate instead of a distribution one",
                                                                  is_string: false, # true: verifies the input is a string, false: every kind of value
                                                                  default_value: false) # the default value if the user didn't provide one
                                                                  ]
      end

      def self.output
        # Define the shared values you are going to provide
        # Example
        [
        ['CLEAR_ARCHIVED_DATA_CUSTOM_VALUE', 'A description of what this value contains']
        ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Onur Yıldırım"]
      end

      def self.is_supported?(platform)
        [
        'clear_derived_data'
        ]
        #
        #  true
        #
        #  platform == :ios
        #
        #  [:ios, :mac].include?(platform)
        #

        platform == :ios
      end
    end
  end
end
