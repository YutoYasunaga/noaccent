# frozen_string_literal: true

RSpec.describe NoAccent do
  it 'has a version number' do
    expect(NoAccent::VERSION).not_to be nil
  end

  it 'cut accent from text' do
    aggregate_failures do
      expect(NoAccent.cut('Đại học Mở Hà Nội')).to eq 'Dai hoc Mo Ha Noi'
      expect(NoAccent.cut('Những ngày tháng khó khăn')).to eq 'Nhung ngay thang kho khan'
      expect(NoAccent.cut('Bật công tắc đèn')).to eq 'Bat cong tac den'
      expect(NoAccent.cut('Đỗ chứng chỉ tiếng Nhật')).to eq 'Do chung chi tieng Nhat'
      expect(NoAccent.cut('Ấn vào cái nút này, đúng rồi')).to eq 'An vao cai nut nay, dung roi'
      expect(NoAccent.cut('Ứng tiền lương')).to eq 'Ung tien luong'
      expect(NoAccent.cut('Ống nước')).to eq 'Ong nuoc'
      expect(NoAccent.cut('Ánh trăng')).to eq 'Anh trang'
      expect(NoAccent.cut('ĐỖ ĐỨC TƯỜNG')).to eq 'DO DUC TUONG'
      expect(NoAccent.cut('LÊ MINH THIỆN TOÀN')).to eq 'LE MINH THIEN TOAN'
    end
  end

  it 'cut accent from text contains other languages' do
    expect(NoAccent.cut('Chicken nghĩa là con gà')).to eq 'Chicken nghia la con ga'
    expect(NoAccent.cut('日本へ行きたい')).to eq '日本へ行きたい'
    expect(NoAccent.cut('消しゴム nghĩa là cục gôm')).to eq '消しゴム nghia la cuc gom'
    expect(NoAccent.cut('Cách nói 你好 trong tiếng Trung')).to eq 'Cach noi 你好 trong tieng Trung'
    expect(NoAccent.cut('안녕 nghĩa là gì?')).to eq '안녕 nghia la gi?'
  end

  it 'cut accent by string extension method' do
    expect('Ōsaka'.cut_accent).to eq 'Osaka'
  end
end
