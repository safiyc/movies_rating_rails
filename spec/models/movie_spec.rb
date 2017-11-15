require 'rails_helper'

describe Movie do
  it { should validate_presence_of :title }
  it { should validate_uniqueness_of(:title).case_insensitive}
  it { should validate_presence_of :description }
  it { should validate_presence_of :genre }
  it { should validate_presence_of :release_date }
end
