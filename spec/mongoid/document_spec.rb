require 'spec_helper'

describe Mongoid::Document do
  describe '.paranoid?' do
    context 'when Mongoid::Paranoia is included' do
      subject { ParanoidPost }

      it 'returns true' do
        expect(subject).to be_paranoid
      end
    end

    context 'when Mongoid::Paranoia not included' do
      subject { Author }

      it 'returns true' do
        expect(subject).not_to be_paranoid
      end
    end
  end
end
