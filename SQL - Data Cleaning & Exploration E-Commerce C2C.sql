SELECT country, countryCode
FROM c2cfashion..usersdataset
order by countryCode

UPDATE c2cfashion..usersdataset
SET country =
  CASE countryCode
    WHEN 'ad' THEN 'Andorra'
    WHEN 'ae' THEN 'United Arab Emirates'
    WHEN 'af' THEN 'Afghanistan'
    WHEN 'ag' THEN 'Antigua and Barbuda'
    WHEN 'ai' THEN 'Anguilla'
    WHEN 'al' THEN 'Albania'
    WHEN 'am' THEN 'Armenia'
    WHEN 'an' THEN 'Netherlands Antilles (disbanded)'
    WHEN 'ao' THEN 'Angola'
    WHEN 'aq' THEN 'Antarctica'
    WHEN 'ar' THEN 'Argentina'
    WHEN 'as' THEN 'American Samoa'
    WHEN 'at' THEN 'Austria'
    WHEN 'au' THEN 'Australia'
    WHEN 'aw' THEN 'Aruba'
    WHEN 'az' THEN 'Azerbaijan'
    WHEN 'ba' THEN 'Bosnia and Herzegovina'
    WHEN 'bb' THEN 'Barbados'
    WHEN 'bd' THEN 'Bangladesh'
    WHEN 'be' THEN 'Belgium'
    WHEN 'bf' THEN 'Burkina Faso'
    WHEN 'bg' THEN 'Bulgaria'
    WHEN 'bh' THEN 'Bahrain'
    WHEN 'bi' THEN 'Burundi'
    WHEN 'bj' THEN 'Benin'
    WHEN 'bl' THEN 'Saint Barthélemy'
    WHEN 'bm' THEN 'Bermuda'
    WHEN 'bn' THEN 'Brunei Darussalam'
    WHEN 'bo' THEN 'Bolivia'
    WHEN 'br' THEN 'Brazil'
    WHEN 'bs' THEN 'Bahamas'
    WHEN 'bv' THEN 'Bouvet Island'
    WHEN 'bw' THEN 'Botswana'
    WHEN 'by' THEN 'Belarus'
    WHEN 'bz' THEN 'Belize'
    WHEN 'ca' THEN 'Canada'
    WHEN 'cd' THEN 'Democratic Republic of the Congo'
    WHEN 'cf' THEN 'Central African Republic'
    WHEN 'cg' THEN 'Republic of the Congo'
    WHEN 'ch' THEN 'Switzerland'
    WHEN 'ci' THEN 'Ivory Coast'
    WHEN 'cl' THEN 'Chile'
    WHEN 'cm' THEN 'Cameroon'
    WHEN 'cn' THEN 'China'
    WHEN 'co' THEN 'Colombia'
    WHEN 'cr' THEN 'Costa Rica'
    WHEN 'cu' THEN 'Cuba'
    WHEN 'cy' THEN 'Cyprus'
    WHEN 'cz' THEN 'Czech Republic'
    WHEN 'de' THEN 'Germany'
    WHEN 'dj' THEN 'Djibouti'
    WHEN 'dk' THEN 'Denmark'
    WHEN 'dm' THEN 'Dominica'
    WHEN 'do' THEN 'Dominican Republic'
    WHEN 'dz' THEN 'Algeria'
    WHEN 'ec' THEN 'Ecuador'
    WHEN 'ee' THEN 'Estonia'
    WHEN 'eg' THEN 'Egypt'
    WHEN 'er' THEN 'Eritrea'
    WHEN 'es' THEN 'Spain'
    WHEN 'et' THEN 'Ethiopia'
    WHEN 'fi' THEN 'Finland'
    WHEN 'fj' THEN 'Fiji'
    WHEN 'fk' THEN 'Falkland Islands'
    WHEN 'fo' THEN 'Faroe Islands'
    WHEN 'fr' THEN 'France'
    WHEN 'ga' THEN 'Gabon'
    WHEN 'gb' THEN 'United Kingdom'
    WHEN 'gd' THEN 'Grenada'
    WHEN 'ge' THEN 'Georgia'
    WHEN 'gg' THEN 'Guernsey'
    WHEN 'gh' THEN 'Ghana'
    WHEN 'gi' THEN 'Gibraltar'
    WHEN 'gm' THEN 'Gambia'
    WHEN 'gn' THEN 'Guinea'
    WHEN 'gp' THEN 'Guadeloupe'
    WHEN 'gr' THEN 'Greece'
    WHEN 'gs' THEN 'South Georgia and the South Sandwich Islands'
    WHEN 'gt' THEN 'Guatemala'
    WHEN 'gu' THEN 'Guam'
    WHEN 'gy' THEN 'Guyana'
    WHEN 'hk' THEN 'Hong Kong'
    WHEN 'hn' THEN 'Honduras'
    WHEN 'hr' THEN 'Croatia'
    WHEN 'ht' THEN 'Haiti'
    WHEN 'hu' THEN 'Hungary'
    WHEN 'ic' THEN 'Canary Islands'
    WHEN 'id' THEN 'Indonesia'
    WHEN 'ie' THEN 'Ireland'
    WHEN 'il' THEN 'Israel'
    WHEN 'im' THEN 'Isle of Man'
    WHEN 'in' THEN 'India'
    WHEN 'iq' THEN 'Iraq'
    WHEN 'ir' THEN 'Iran'
    WHEN 'is' THEN 'Iceland'
    WHEN 'it' THEN 'Italy'
    WHEN 'je' THEN 'Jersey'
    WHEN 'jm' THEN 'Jamaica'
    WHEN 'jo' THEN 'Jordan'
    WHEN 'jp' THEN 'Japan'
    WHEN 'ke' THEN 'Kenya'
    WHEN 'kg' THEN 'Kyrgyzstan'
    WHEN 'kh' THEN 'Cambodia'
    WHEN 'ki' THEN 'Kiribati'
    WHEN 'kn' THEN 'Saint Kitts and Nevis'
    WHEN 'kp' THEN 'North Korea'
    WHEN 'kr' THEN 'South Korea'
    WHEN 'kw' THEN 'Kuwait'
    WHEN 'ky' THEN 'Cayman Islands'
    WHEN 'kz' THEN 'Kazakhstan'
    WHEN 'la' THEN 'Laos'
    WHEN 'lb' THEN 'Lebanon'
    WHEN 'lc' THEN 'Saint Lucia'
    WHEN 'li' THEN 'Liechtenstein'
    WHEN 'lk' THEN 'Sri Lanka'
    WHEN 'lt' THEN 'Lithuania'
    WHEN 'lu' THEN 'Luxembourg'
    WHEN 'lv' THEN 'Latvia'
    WHEN 'ly' THEN 'Libya'
    WHEN 'ma' THEN 'Morocco'
    WHEN 'mc' THEN 'Monaco'
    WHEN 'md' THEN 'Moldova'
    WHEN 'mg' THEN 'Madagascar'
    WHEN 'mk' THEN 'North Macedonia'
    WHEN 'ml' THEN 'Mali'
    WHEN 'mm' THEN 'Myanmar (Burma)'
    WHEN 'mn' THEN 'Mongolia'
    WHEN 'mo' THEN 'Macau'
    WHEN 'mq' THEN 'Martinique'
    WHEN 'mr' THEN 'Mauritania'
    WHEN 'mt' THEN 'Malta'
    WHEN 'mu' THEN 'Mauritius'
    WHEN 'mv' THEN 'Maldives'
    WHEN 'mx' THEN 'Mexico'
    WHEN 'my' THEN 'Malaysia'
    WHEN 'na' THEN 'Namibia'
    WHEN 'nc' THEN 'New Caledonia'
    WHEN 'ne' THEN 'Niger'
    WHEN 'nf' THEN 'Norfolk Island'
    WHEN 'ng' THEN 'Nigeria'
    WHEN 'ni' THEN 'Nicaragua'
    WHEN 'nl' THEN 'Netherlands'
    WHEN 'no' THEN 'Norway'
    WHEN 'np' THEN 'Nepal'
    WHEN 'nz' THEN 'New Zealand'
    WHEN 'om' THEN 'Oman'
    WHEN 'pa' THEN 'Panama'
    WHEN 'pe' THEN 'Peru'
    WHEN 'pf' THEN 'French Polynesia'
    WHEN 'ph' THEN 'Philippines'
    WHEN 'pk' THEN 'Pakistan'
    WHEN 'pl' THEN 'Poland'
    WHEN 'pr' THEN 'Puerto Rico'
    WHEN 'pt' THEN 'Portugal'
    WHEN 'pw' THEN 'Palau'
    WHEN 'py' THEN 'Paraguay'
    WHEN 'qa' THEN 'Qatar'
    WHEN 're' THEN 'Réunion'
    WHEN 'ro' THEN 'Romania'
    WHEN 'rs' THEN 'Serbia'
    WHEN 'ru' THEN 'Russia'
    WHEN 'rw' THEN 'Rwanda'
    WHEN 'sa' THEN 'Saudi Arabia'
    WHEN 'se' THEN 'Sweden'
    WHEN 'sg' THEN 'Singapore'
    WHEN 'si' THEN 'Slovenia'
    WHEN 'sj' THEN 'Svalbard and Jan Mayen'
    WHEN 'sk' THEN 'Slovakia'
    WHEN 'sn' THEN 'Senegal'
    WHEN 'sr' THEN 'Suriname'
    WHEN 'sv' THEN 'El Salvador'
    WHEN 'sy' THEN 'Syria'
    WHEN 'sz' THEN 'Eswatini (formerly Swaziland)'
    WHEN 'tc' THEN 'Turks and Caicos Islands'
    WHEN 'td' THEN 'Chad'
    WHEN 'tg' THEN 'Togo'
    WHEN 'th' THEN 'Thailand'
    WHEN 'tj' THEN 'Tajikistan'
    WHEN 'tn' THEN 'Tunisia'
    WHEN 'tr' THEN 'Turkey'
    WHEN 'tt' THEN 'Trinidad and Tobago'
    WHEN 'tw' THEN 'Taiwan'
    WHEN 'tz' THEN 'Tanzania'
    WHEN 'ua' THEN 'Ukraine'
    WHEN 'ug' THEN 'Uganda'
    WHEN 'um' THEN 'United States Minor Outlying Islands'
    WHEN 'us' THEN 'United States'
    WHEN 'uy' THEN 'Uruguay'
    WHEN 'uz' THEN 'Uzbekistan'
    WHEN 'vc' THEN 'Saint Vincent and the Grenadines'
    WHEN 've' THEN 'Venezuela'
    WHEN 'vg' THEN 'British Virgin Islands'
    WHEN 'vi' THEN 'U.S. Virgin Islands'
    WHEN 'vn' THEN 'Vietnam'
    WHEN 'vu' THEN 'Vanuatu'
    WHEN 'ws' THEN 'Samoa'
    WHEN 'yt' THEN 'Mayotte'
    WHEN 'za' THEN 'South Africa'
    WHEN 'zm' THEN 'Zambia'
    WHEN 'zw' THEN 'Zimbabwe'
    ELSE country
  END


USE c2cfashion
GO

DECLARE @minproductsbought AS Integer = 10

SELECT
  country,
  nbBuyers as buyers,
  nbtopBuyers as topBuyers,
  FORMAT(nbtopbuyers * 100.0 / NULLIF(nbbuyers, 0), 'N2') as topbuyersratio,
  femaleBuyers,
  (nbBuyers - femaleBuyers) as maleBuyers,
  topFemaleBuyers,
  (nbtopBuyers - topfemaleBuyers) as topMaleBuyers,
  

  totalProductsBought,
  totalproductsWished,
  totalproductsLiked,
  topTotalProductsBought,
  topTotalProductsWished,
  topTotalProductsLiked


FROM
(SELECT 
  country,
  COUNT(identifierhash) as nbBuyers,
  SUM(productsBought) as totalProductsBought,
  SUM(productsWished) as totalProductsWished,
  SUM(socialproductsliked) as totalProductsLiked,
  SUM( dayssincelastlogin ) as totalDaysSinceLastLogin,
  SUM( socialnbfollowers ) as followersCount,
  SUM( socialnbfollows ) followingCount,
  SUM(CASE gender WHEN 'F' THEN 1 ELSE 0 END) as femaleBuyers,

  -- Stats for top Buyers
  SUM(CASE WHEN productsBought >= @minProductsbought THEN 1 ELSE 0 END) nbTopBuyers,
  SUM(CASE WHEN productsBought >= @minProductsbought THEN productsBought ELSE 0 END) topTotalProductsBought,
  SUM(CASE WHEN productsBought >= @minProductsbought THEN productsWished ELSE 0 END) topTotalProductsWished,
  SUM(CASE WHEN productsBought >= @minProductsbought THEN socialproductsliked ELSE 0 END) topTotalProductsLiked,
  SUM(CASE WHEN productsBought >= @minProductsbought THEN socialnbfollowers ELSE 0 END) topFollowersCount,
  SUM(CASE WHEN productsBought >= @minProductsbought THEN socialnbfollows ELSE 0 END) topFollowingCount,
  SUM(CASE WHEN productsBought >= @minProductsbought THEN dayssincelastlogin ELSE 0 END) topTotalDaysSinceLastLogin,
  SUM(CASE WHEN (productsBought >= @minProductsbought AND gender = 'F') THEN 1 ELSE 0 END) as topFemaleBuyers

FROM c2cfashion..usersdataset
WHERE productsBought > 0  -- filter to only successful Buyers (not prospecting Buyers)
GROUP BY country

) AS precomputedStats
WHERE (nbbuyers > 0)
ORDER BY nbtopBuyers DESC, buyers DESC




