describe Fastlane::Actions::ClearArchivedDataAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The clear_archived_data plugin is working!")

      Fastlane::Actions::ClearArchivedDataAction.run(nil)
    end
  end
end
