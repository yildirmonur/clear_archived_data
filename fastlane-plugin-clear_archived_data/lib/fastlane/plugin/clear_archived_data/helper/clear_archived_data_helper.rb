module Fastlane
  module Helper
    class ClearArchivedDataHelper
      # class methods that you define here become available in your action
      # as `Helper::ClearArchivedDataHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the clear_archived_data plugin helper!")
      end
    end
  end
end
