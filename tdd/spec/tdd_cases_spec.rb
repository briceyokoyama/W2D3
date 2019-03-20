require "tdd_cases"

RSpec.describe "TDD Excercises" do
  
  describe "Removing Dupes from an Array" do
    let(:arr) {[1,2,1,3,3]}

    describe "#my_uniq" do
      it "receives an array" do
        expect { my_uniq("banana") }.to raise_error(StandardError)
      end

      it "returns a new array" do
        expect(my_uniq(arr).is_a?(Array)).to eq(true)
      end

      it "does not modify original array" do
        expect(my_uniq(arr)).not_to be(arr)
      end

      it "removes duplicates from an array" do
        expect(my_uniq(arr)).to eq([1, 2, 3])
      end
    end
  end

  describe Array do

    describe "Find all pairs of positions where the elements at those positions sum to zero" do
      subject(:arr) {[-1, 0, 2, -2, 1]}

      describe "#two_sum" do
        it "returns an array" do
          expect(arr.two_sum.is_a?(Array)).to eq(true)
        end
    
        it "returns an array where smaller first elements come first" do
          expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end
      end
    end
  end

  describe "Transposing 2D arrays" do
    let(:rows) {[
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ] }

    describe "#my_transpose" do
      it "returns an array" do
        expect(my_transpose(rows).is_a?(Array)).to eq(true)
      end

      it "returns a 2d array" do
        expect(my_transpose(rows).all? {|ele| ele.is_a?(Array)}).to eq(true)
      end

      let(:cols) { [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ] }
      it "returns a 2d array" do
        expect(my_transpose(rows)).to eq(cols)
      end
    end
  end

  describe "Stock Pick" do
    let(:arr) {[3, 0, 2, 5, 9, 2]}

    describe "#stock_picker" do
      it "receives an array of only integers" do
        expect {stock_picker("not_an_array")}.to raise_error(StandardError)
      end

      it "returns an array of length 2" do
        expect(stock_picker(arr).length).to eq(2)
      end

      it "return the most profitable combo of days" do
        expect(stock_picker(arr)).to eq([1, 4])
      end

      it "it sells after it buys" do
        expect(stock_picker(arr)[0]).to be < stock_picker(arr)[1]
      end
    end
  end



end