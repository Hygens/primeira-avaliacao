require 'spech'
require 'primeira_avaliacao'

describe PriEval do
  context "When testing the PriEval class" do    
    it 'should test if input is not number' do
      pri = PriEval.new
      expect(pri.valid('s')).to eql("Please entry positive number starting from 1(one)!")
    end
    
    it 'should test if input is not negative or zero' do
      pri1 = PriEval.new
      expect(pri1.valid(-1)).to eql("Please entry positive number starting from 1(one)!")
      expect(pri1.valid(0)).to eql("Please entry positive number starting from 1(one)!")
    end
    
    it 'should test if input valid return result' do
      pri2 = PriEval.new
      expect(pri2.valid(100)).to eql("1, 2, 3, 4, Nama, 6, Team, 8, 9, Nama, 11, 12, 13, Team, Nama, 16, 17, 18, 19, Nama, Team, 22, 23, 24, Nama, 26, 27, Team, 29, Nama, 31, 32, 33, 34, Nama Team, 36, 37, 38, 39, Nama, 41, Team, 43, 44, Nama, 46, 47, 48, Team, Nama, 51, 52, 53, 54, Nama, Team, 57, 58, 59, Nama, 61, 62, Team, 64, Nama, 66, 67, 68, 69, Nama Team, 71, 72, 73, 74, Nama, 76, Team, 78, 79, Nama, 81, 82, 83, Team, Nama, 86, 87, 88, 89, Nama, Team, 92, 93, 94, Nama, 96, 97, Team, 99, Nama")
    end
  end
end