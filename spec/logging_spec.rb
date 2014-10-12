describe Logging do
  include Logging

  let(:log) { File.join 'log', 'test.log' }
  after { File.delete log }

  it 'should log the things' do
    Logging.log_location = log
    logger.info 'THIS BE A TEST.'

    expect(File.read log).to include 'THIS BE A TEST.'
  end
end
