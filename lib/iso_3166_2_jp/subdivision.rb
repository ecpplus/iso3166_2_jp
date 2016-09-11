class ISO3166_2JP
  class Subdivision
    attr_accessor :code, :numeric, :name_ja, :name_en

    def initialize(attr)
      self.code = attr[:code]
      self.numeric = attr[:numeric]
      self.name_ja = attr[:name_ja]
      self.name_en = attr[:name_en]
    end

    def self.all
      DATA.values
      #@@all ||= DATA.values.map{|attr| new(attr)}
    end

    def self.by_numeric(numeric)
      DATA[numeric.to_i]
    end

    def self.by_code(code)
      numeric = code.sub(/\Ajp[\-_]/i, '').to_i
      DATA[numeric.to_i]
    end

    # SLOW
    def self.by_name_ja(name_ja)
      DATA.values.find do |subdivision|
        subdivision.name_ja == name_ja
      end
    end

    # SLOW
    def self.by_name_en(name_en)
      DATA.values.find do |subdivision|
        subdivision.name_en == name_en
      end
    end

    DATA = {
       1 =>  new(code: 'JP-01', numeric:  1, name_ja: '北海道',  name_en: 'Hokkaido'),
       2 =>  new(code: 'JP-02', numeric:  2, name_ja: '青森',    name_en: 'Aomori',),
       3 =>  new(code: 'JP-03', numeric:  3, name_ja: '岩手',    name_en: 'Iwate',),
       4 =>  new(code: 'JP-04', numeric:  4, name_ja: '宮城',    name_en: 'Miyagi',),
       5 =>  new(code: 'JP-05', numeric:  5, name_ja: '秋田',    name_en: 'Akita',),
       6 =>  new(code: 'JP-06', numeric:  6, name_ja: '山形',    name_en: 'Yamagata',),
       7 =>  new(code: 'JP-07', numeric:  7, name_ja: '福島',    name_en: 'Fukushima',),
       8 =>  new(code: 'JP-08', numeric:  8, name_ja: '茨城',    name_en: 'Ibaraki',),
        9 => new(code: 'JP-09', numeric:  9, name_ja: '栃木',    name_en: 'Tochigi',),
       10 => new(code: 'JP-10', numeric: 10, name_ja: '群馬',    name_en: 'Gunma',),
       11 => new(code: 'JP-11', numeric: 11, name_ja: '埼玉',    name_en: 'Saitama',),
       12 => new(code: 'JP-12', numeric: 12, name_ja: '千葉',    name_en: 'Chiba',),
       13 => new(code: 'JP-13', numeric: 13, name_ja: '東京',    name_en: 'Tokyo',),
       14 => new(code: 'JP-14', numeric: 14, name_ja: '神奈川',  name_en: 'Kanagawa',),
       15 => new(code: 'JP-15', numeric: 15, name_ja: '新潟',    name_en: 'Niigata',),
       16 => new(code: 'JP-16', numeric: 16, name_ja: '富山',    name_en: 'Toyama',),
       17 => new(code: 'JP-17', numeric: 17, name_ja: '石川',    name_en: 'Ishikawa',),
       18 => new(code: 'JP-18', numeric: 18, name_ja: '福井',    name_en: 'Fukui',),
       19 => new(code: 'JP-19', numeric: 19, name_ja: '山梨',    name_en: 'Yamanashi',),
       20 => new(code: 'JP-20', numeric: 20, name_ja: '長野',    name_en: 'Nagano',),
       21 => new(code: 'JP-21', numeric: 21, name_ja: '岐阜',    name_en: 'Gifu',),
       22 => new(code: 'JP-22', numeric: 22, name_ja: '静岡',    name_en: 'Shizuoka',),
       23 => new(code: 'JP-23', numeric: 23, name_ja: '愛知',    name_en: 'Aichi',),
       24 => new(code: 'JP-24', numeric: 24, name_ja: '三重',    name_en: 'Mie',),
       25 => new(code: 'JP-25', numeric: 25, name_ja: '滋賀',    name_en: 'Shiga',),
       26 => new(code: 'JP-26', numeric: 26, name_ja: '京都',    name_en: 'Kyoto',),
       27 => new(code: 'JP-27', numeric: 27, name_ja: '大阪',    name_en: 'Osaka',),
       28 => new(code: 'JP-28', numeric: 28, name_ja: '兵庫',    name_en: 'Hyogo',),
       29 => new(code: 'JP-29', numeric: 29, name_ja: '奈良',    name_en: 'Nara',),
       30 => new(code: 'JP-30', numeric: 30, name_ja: '和歌山',  name_en: 'Wakayama',),
       31 => new(code: 'JP-31', numeric: 31, name_ja: '鳥取',    name_en: 'Tottori',),
       32 => new(code: 'JP-32', numeric: 32, name_ja: '島根',    name_en: 'Shimane',),
       33 => new(code: 'JP-33', numeric: 33, name_ja: '岡山',    name_en: 'Okayama',),
       34 => new(code: 'JP-34', numeric: 34, name_ja: '広島',    name_en: 'Hiroshima',),
       35 => new(code: 'JP-35', numeric: 35, name_ja: '山口',    name_en: 'Yamaguchi',),
       36 => new(code: 'JP-36', numeric: 36, name_ja: '徳島',    name_en: 'Tokushima',),
       37 => new(code: 'JP-37', numeric: 37, name_ja: '香川',    name_en: 'Kagawa',),
       38 => new(code: 'JP-38', numeric: 38, name_ja: '愛媛',    name_en: 'Ehime',),
       39 => new(code: 'JP-39', numeric: 39, name_ja: '高知',    name_en: 'Kochi',),
       40 => new(code: 'JP-40', numeric: 40, name_ja: '福岡',    name_en: 'Fukuoka',),
       41 => new(code: 'JP-41', numeric: 41, name_ja: '佐賀',    name_en: 'Saga',),
       42 => new(code: 'JP-42', numeric: 42, name_ja: '長崎',    name_en: 'Nagasaki',),
       43 => new(code: 'JP-43', numeric: 43, name_ja: '熊本',    name_en: 'Kumamoto',),
       44 => new(code: 'JP-44', numeric: 44, name_ja: '大分',    name_en: 'Oita',),
       45 => new(code: 'JP-45', numeric: 45, name_ja: '宮崎',    name_en: 'Miyazaki',),
       46 => new(code: 'JP-46', numeric: 46, name_ja: '鹿児島',  name_en: 'Kagoshima',),
       47 => new(code: 'JP-47', numeric: 47, name_ja: 'Okinawa', name_en: 'Okinawa',),
    }
  end
end
