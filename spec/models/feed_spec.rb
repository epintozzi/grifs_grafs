require 'rails_helper'

RSpec.describe Feed do
  describe 'validations' do
    context 'invalid attributes' do
      it 'is invalid without a start time' do
        feed = Feed.create(end_time: Time.now)
        expect(feed).to be_invalid
      end
      it 'is invalid without an end time' do
        feed = Feed.create(start_time: Time.now)
        expect(feed).to be_invalid
      end
    end
    context 'valid attributes' do
      it 'is valid without a duration' do
        feed = Feed.create(start_time: Time.now - 1.hour, end_time: Time.now, amount: 1)
        expect(feed).to be_valid
      end
      it 'is valid without an amount' do
        feed = Feed.create(start_time: Time.now - 1.hour, end_time: Time.now, duration: 1.hour)
        expect(feed).to be_valid
      end
      it 'is valid with all attributes' do
        feed = Feed.create(start_time: Time.now - 1.hour, end_time: Time.now, duration: 1.hour, amount: 1)
        expect(feed).to be_valid
      end
    end
  end
end
