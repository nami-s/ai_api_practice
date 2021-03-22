describe '四則演算' do
  context '足し算' do
    it '1 + 1 は 2 になる' do
      expect(1 + 1).to eq 2
    end
  end
  context '引き算' do
    it '1 - 1 は 0 になる' do
      expect(1 - 1).to eq 0
    end
  end
end