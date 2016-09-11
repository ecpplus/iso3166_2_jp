require 'spec_helper'

describe ISO3166_2JP do
  describe 'version' do
    it 'has a version number' do
      expect(ISO3166_2JP::VERSION).not_to be nil
    end
  end

  let(:tokyo_attr) { { code: 'JP-13', numeric: 13, name_ja: '東京',  name_en: 'Tokyo' } }
  let(:chiba_attr) { { code: 'JP-14', numeric: 14, name_ja: '千葉',  name_en: 'Chiba' } }
  let(:tokyo) { ISO3166_2JP::Subdivision.new(tokyo_attr) }
  let(:chiba) { ISO3166_2JP::Subdivision.new(chiba_attr) }

  describe '#initialize' do
    subject { ISO3166_2JP::Subdivision.new(tokyo_attr) }

    it 'has valid attributes' do
      expect(subject.code).to    eq 'JP-13'
      expect(subject.numeric).to eq 13
      expect(subject.name_ja).to eq '東京'
      expect(subject.name_en).to eq 'Tokyo'
    end
  end

  describe 'Comparable' do
    describe '#<=>' do
      let(:tokyo_instance_2) { ISO3166_2JP::Subdivision.new(tokyo_attr) }

      it 'tokyo_instance_1 is equal to tokyo_instance_2' do
        expect(tokyo == tokyo_instance_2).to eq true
      end

      it 'tokyo_instance_1 is not equal to chiba_instance' do
        expect(tokyo == chiba).to eq false
        expect(tokyo != chiba).to eq true
      end
    end
  end

  describe '.all' do
    subject { ISO3166_2JP::Subdivision.all }

    it 'is valid count' do
      expect(subject.size).to eq 47
    end

    it 'is an array of Subdivision' do
      expect(subject.all?{|obj| obj.is_a?(ISO3166_2JP::Subdivision)}).to eq true
    end
  end

  let(:tokyo) { ISO3166_2JP::Subdivision.new(tokyo_attr) }

  shared_examples_for 'is Tokyo' do
    it 'is Tokyo' do
      expect(subject).to eq tokyo
    end
  end

  describe '.by_numeric' do
    subject { ISO3166_2JP::Subdivision.by_numeric(13) }
    it_behaves_like 'is Tokyo'
  end

  describe '.by_code' do
    subject { ISO3166_2JP::Subdivision.by_code('JP-13') }
    it_behaves_like 'is Tokyo'
  end

  describe '.by_name_ja' do
      subject { ISO3166_2JP::Subdivision.by_name_ja('東京') }
      it_behaves_like 'is Tokyo'
  end

  describe '.by_name_en' do
    context 'with capitalized string' do
      subject { ISO3166_2JP::Subdivision.by_name_en('Tokyo') }
      it_behaves_like 'is Tokyo'
    end

    context 'with lower string' do
      subject { ISO3166_2JP::Subdivision.by_name_en('tokyo') }
      it_behaves_like 'is Tokyo'
    end
  end
end
