require 'spec_helper'

describe "store_product_infos/index" do
  before(:each) do
    assign(:store_product_infos, [
      stub_model(StoreProductInfo,
        :product => nil,
        :store => nil,
        :price => 1.5,
        :quantity => 1
      ),
      stub_model(StoreProductInfo,
        :product => nil,
        :store => nil,
        :price => 1.5,
        :quantity => 1
      )
    ])
  end

  it "renders a list of store_product_infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
