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
      end

      def self.description
        "Deletes the Xcode Archived Data"
      end
      def self.details
        "Deletes the Archived Data from path set on Xcode or a supplied path"
      end

      def self.available_options
      end

      def self.output
      end

      def self.return_value
      end

      def self.authors
        ["Onur Yıldırım"]
      end

      def self.is_supported?(platform)
        [
        'clear_derived_data'
        ]
        platform == :ios
      end
    end
  end
end
