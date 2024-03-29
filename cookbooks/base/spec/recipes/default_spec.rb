require_relative '../spec_helper'

describe 'base::default' do
  subject { ChefSpec::Runner.new.converge(described_recipe) }

  # Write quick specs using `it` blocks with implied subjects
  it { should do_something('...') }

  # Write full examples using the `expect` syntax
  it 'does something' do
    expect(subject).to do_something('...')
  end

  # Use an explicit subject
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'does something' do
    expect(chef_run).to do_something('...')
  end
end
