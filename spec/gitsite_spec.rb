RSpec.describe Gitsite do
  it "has a version number" do
    expect(Gitsite::VERSION).not_to be nil
  end

  describe '.execute' do
    let(:root_directory_name) { Gitsite::ROOT_DIRECTORY_NAME }

    after :each do
      FileUtils.rm_rf(root_directory_name)
    end

    it "outputs a message that it's created a docs directory" do
      expect(STDOUT).to receive(:puts).with('Finding or creating `doc` directory')
      Gitsite.execute
    end

    it "finds or creates a directory with the root_directory_name" do
      expect(FileUtils).to receive(:mkdir_p).with(root_directory_name)
      Gitsite.execute
    end
  end
end
