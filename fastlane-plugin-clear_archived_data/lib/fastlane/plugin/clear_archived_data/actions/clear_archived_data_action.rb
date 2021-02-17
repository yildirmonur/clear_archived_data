require 'fileutils'
require 'fastlane/action'
require_relative '../helper/clear_archived_data_helper'

module Fastlane
  module Actions
    class ClearArchivedDataAction < Action
      def self.run(params)
        path = Actions.lane_context[SharedValues::XCODEBUILD_ARCHIVE]
        if (path.present? && File.directory?(path))
          UI.message("Archive file found at path: #{path}")
          FileUtils.rm_rf(path)
          UI.success("Successfully deleted archive file. ♻️")
        else
          UI.message("Unable to locate archive file. Skipping...")
        end
      end

      def self.description
        "Deletes the archive file located at SharedValues::XCODEBUILD_ARCHIVE."
      end

      def self.authors
        ["Onur Yıldırım"]
      end

      def self.return_value
         "No return value"
      end

      def self.details
        "Deletes the archive file from path set on Xcode."
      end

      def self.available_options
        []
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
