require 'spec_helper'

describe Property::Description do
  subject { property }

  let(:property)    { create :property }
  let(:description) { property.description }
  let(:title)       { property.title }

  let(:default_property) { property }

  let(:valid_title) { 'hola chica' }
  let(:valid_desc)  { 'my desc' }

  let(:untrimmed_title) { '  hola chica' }
  let(:untrimmed_desc)  { '  my desc    ' }

  context 'default property' do
    # let(:property)  { create :property }

    it 'should not be valid' do
      expect { create :property }.to raise_error
    end
    # describe 'description' do
    #   it 'should not be set' do
    #     expect(description).to be_blank
    #   end
    # end

    # describe 'title' do
    #   it 'should not be set' do
    #     expect(title).to be_blank
    #   end
    # end
  end

  describe 'title' do
    context 'property with blank title' do
      it 'should not be valid' do
        expect { create :property, title: '  ' }.to raise_error
      end
    end

    context 'property with title set with untrimmed spaces ' do
      let(:property) { create :property, title: untrimmed_title }

      it 'should trim trimmed title, stripped of extra spaces' do
        expect(title).to eq valid_title
      end
    end
  end

  describe 'description' do
    context 'property with blank description' do
      # let(:property) { create :property, description: '  ' }

      it 'should not be valid' do
        expect { create :property, description: '  ' }.to raise_error
      end

      # it 'should not be valid' do
      #   expect(subject).to_not be_valid
      # end
    end

    context 'property with description set with untrimmed spaces ' do
      let(:property) { create :property, title: untrimmed_title, description: untrimmed_desc }

      it 'should trim title, stripped of extra spaces' do
        expect(title).to eq valid_title
      end

      it 'should trim description, stripped of extra spaces' do
        expect(description).to eq valid_desc
      end
    end
  end  
end