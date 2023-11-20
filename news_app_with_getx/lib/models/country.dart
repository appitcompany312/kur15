class Country {
  const Country({
    required this.name,
    required this.code,
    required this.langCode,
  });

  final String name;
  final String code;
  final String langCode;
}

final List<Country> countries = <Country>[
  const Country(
    name: 'United States',
    code: 'us',
    langCode: 'en',
  ),
  const Country(
    name: 'Turkey',
    code: 'tr',
    langCode: 'tr',
  ),
  const Country(
    name: 'India',
    code: 'in',
    langCode: 'en',
  ),
  const Country(
    name: 'Korea',
    code: 'kr',
    langCode: 'ko',
  ),
  const Country(
    name: 'Japan',
    code: 'jp',
    langCode: 'ja',
  ),
  const Country(
    name: 'Germany',
    code: 'de',
    langCode: 'de',
  ),
  const Country(
    name: 'Russia',
    code: 'ru',
    langCode: 'ru',
  ),
  const Country(
    name: 'United Arab Emirates',
    code: 'ae',
    langCode: 'ar',
  ),
  const Country(
    name: 'Chine',
    code: 'cn',
    langCode: 'zh',
  )
];
