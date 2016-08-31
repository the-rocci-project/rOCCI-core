module Occi
  module Core
    describe Model do
      subject(:mdl) { model }
      let(:model) { Model.new }

      let(:example_term) { 'kind' }
      let(:example_schema) { 'http://schemas.org/schema#' }
      let(:example_title) { 'Generic kind' }

      let(:attribute_title) { 'occi.core.title' }
      let(:attribute_id) { 'occi.core.id' }
      let(:attribute_source) { 'occi.core.source' }
      let(:attribute_target) { 'occi.core.target' }
      let(:attributes) do
        {
          attribute_title   => instance_double('Occi::Core::AttributeDefinition'),
          attribute_id      => instance_double('Occi::Core::AttributeDefinition'),
          attribute_source  => instance_double('Occi::Core::AttributeDefinition'),
          attribute_target  => instance_double('Occi::Core::AttributeDefinition')
        }
      end

      let(:root_kind) do
        Kind.new(
          term: 'root',
          schema: 'http://test.org/root#',
          title: 'Root kind'
        )
      end

      let(:kind) do
        Kind.new(
          term: example_term,
          schema: example_schema,
          title: example_title,
          parent: root_kind,
          attributes: attributes
        )
      end

      let(:mixin) do
        Mixin.new(
          term: 'mixin',
          schema: example_schema,
          title: 'Mixin',
          applies: [kind]
        )
      end

      let(:action) do
        Action.new(
          schema: example_schema,
          term: 'action',
          title: 'Action'
        )
      end

      let(:link) { Link.new(kind: kind, title: 'My Link', source: resource, target: resource) }
      let(:resource) { Resource.new(kind: kind, title: 'My Resource', mixins: Set.new([mixin])) }
      let(:action_instance) { ActionInstance.new(action: action, attributes: {}) }

      before(:example) do
        attributes.keys.each do |attrib|
          allow(attributes[attrib]).to receive(:default)
          allow(attributes[attrib]).to receive(:valid!)
        end
      end

      it 'has logger' do
        expect(mdl).to respond_to(:logger)
        expect(mdl.class).to respond_to(:logger)
      end

      it 'is renderable' do
        expect(mdl).to be_kind_of(Helpers::Renderable)
        expect(mdl).to respond_to(:render)
      end

      describe '#valid!' do
        context 'with valid instances' do
          before(:example) do
            mdl << kind << action << mixin << root_kind
            mdl << link << resource << action_instance
          end

          it 'validates' do
            expect { mdl.valid! }.not_to raise_error
          end
        end

        context 'with invalid instances' do
          context 'without kind' do
            before(:example) do
              mdl << action << mixin << root_kind
              mdl << link << resource << action_instance
            end

            it 'fails on missing kind' do
              expect { mdl.valid! }.to raise_error(Occi::Core::Errors::InstanceValidationError)
            end
          end

          context 'without action' do
            before(:example) do
              mdl << kind << mixin << root_kind
              mdl << link << resource << action_instance
            end

            it 'fails on missing action' do
              expect { mdl.valid! }.to raise_error(Occi::Core::Errors::InstanceValidationError)
            end
          end

          context 'without mixin' do
            before(:example) do
              mdl << action << kind << root_kind
              mdl << link << resource << action_instance
            end

            it 'fails on missing mixin' do
              expect { mdl.valid! }.to raise_error(Occi::Core::Errors::InstanceValidationError)
            end
          end
        end
      end

      describe '#valid?' do
        context 'with valid instances' do
          before(:example) do
            mdl << kind << action << mixin << root_kind
            mdl << link << resource << action_instance
          end

          it 'validates' do
            expect(mdl.valid?).to be true
          end
        end

        context 'with invalid instances' do
          context 'without kind' do
            before(:example) do
              mdl << action << mixin << root_kind
              mdl << link << resource << action_instance
            end

            it 'fails on missing kind' do
              expect(mdl.valid?).to be false
            end
          end

          context 'without action' do
            before(:example) do
              mdl << kind << mixin << root_kind
              mdl << link << resource << action_instance
            end

            it 'fails on missing action' do
              expect(mdl.valid?).to be false
            end
          end

          context 'without mixin' do
            before(:example) do
              mdl << action << kind << root_kind
              mdl << link << resource << action_instance
            end

            it 'fails on missing mixin' do
              expect(mdl.valid?).to be false
            end
          end
        end
      end
    end
  end
end
