require 'rails_helper'

RSpec.describe Sleep do
  describe 'validations' do
    context 'invalid attributes' do
      it 'is invalid without a start time' do
        sleep = Sleep.create(end_time: Time.now)
        expect(sleep).to be_invalid
      end
      it 'is invalid without an end time' do
        sleep = Sleep.create(start_time: Time.now)
        expect(sleep).to be_invalid
      end
    end
    context 'valid attributes' do
      it 'is valid without a duration' do
        sleep = Sleep.create(start_time: Time.now - 1.hour, end_time: Time.now)
        expect(sleep).to be_valid
      end
      it 'is valid with all attributes' do
        sleep = Sleep.create(start_time: Time.now - 1.hour, end_time: Time.now, duration: 1.hour)
        expect(sleep).to be_valid
      end
    end
  end
end
