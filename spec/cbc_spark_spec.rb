require 'spec_helper'

describe CbcSpark do
  it 'should have a version number' do
    CbcSpark::VERSION.should_not be_nil
  end

  describe 'list Spark episodes' do
  	it 'should list all Spark episodes' do
  		CbcSpark.list.count.should >= 1
  	end
  end

  describe 'fetching an episode' do
  	it 'should find an episode' do
  		CbcSpark.get(rand(CbcSpark.list.count)).should_not be_nil
  	end
  end

  describe 'latest Spark episode' do
	  it 'should fetch an episode' do
	    CbcSpark.latest.should_not be_nil
	  end

	  it 'should have a title' do
	  	CbcSpark.latest.title.should_not be_nil
	  end

	  it 'should have a description' do
	  	CbcSpark.latest.description.should_not be_nil
	  end

	  it 'should have a url' do
	  	CbcSpark.latest.url.should_not be_nil
	  end

	  it 'should have a duration' do
	  	CbcSpark.latest.duration.should_not be_nil
	  end

	  it 'should have a publication date' do
	  	CbcSpark.latest.publication_date.should_not be_nil
	  end
	end
end
