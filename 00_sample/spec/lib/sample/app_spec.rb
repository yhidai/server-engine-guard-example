require 'spec_helper'
require 'sample/app'

describe Sample::MyWorker do
  let(:test_class) { Struct.new(:hoge) { include Sample::MyWorker } }
  let(:my_worker) { test_class.new }

  it 'stop' do
    expect(my_worker.stop).to eq(true)
  end
end
