require 'spec_helper'
# $LOAD_PATH.each {|path| p path}
require 'sample'

describe Sample::Util do
  it 'hello' do
    expect(Sample::Util.hello).to eq('Hello')
  end
end



