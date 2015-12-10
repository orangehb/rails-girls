require 'rails_helper'

RSpec.describe Idea, type: :model do
  it { is_expected.to respond_to(:name)}
  it { is_expected.to respond_to(:description)}
  it { is_expected.to respond_to(:picture)}
end