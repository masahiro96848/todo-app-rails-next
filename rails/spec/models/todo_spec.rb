require "rails_helper"

RSpec.describe Todo, type: :model do
  context "factoryのデフォルト設定に従った時" do
    subject { create(:todo) }

    it "正常にレコードを新規作成できる" do
      expect { subject }.to change { Todo.count }.by(1)
    end
  end

  describe "Validations" do
    subject { todo.valid? }

    let(:todo) { build(:todo, title:, content:, user:) }
    let(:title) { Faker::Lorem.sentence }
    let(:content) { Faker::Lorem.paragraph }
    let(:user) { create(:user) }

    context "全ての値が正常な時" do
      it "検証が通る" do
        expect(subject).to be_truthy
      end
    end
  end
end
