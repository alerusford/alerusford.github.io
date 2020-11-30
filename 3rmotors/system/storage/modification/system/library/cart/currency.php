<?php
namespace Cart;
class Currency {
	private $currencies = array();

	public function __construct($registry) {
		$this->db = $registry->get('db');
		$this->language = $registry->get('language');

		
		$query = $this->db->query("SELECT 
			c.*,
			IF(LENGTH(cm.`symbol_left`) != 0
					AND cm.`symbol_left` IS NOT NULL,
				CONCAT((IF(LENGTH(SUBSTRING_INDEX(c.`symbol_left`,
											TRIM(c.`symbol_left`),
											1)) > 0,
							SUBSTRING_INDEX(c.`symbol_left`,
									TRIM(c.`symbol_left`),
									1),
							'')),
						REPLACE(cm.`symbol_left`,
							'_default_symbol_',
							TRIM(c.`symbol_left`)),
						(IF(LENGTH(SUBSTRING_INDEX(c.`symbol_left`,
											TRIM(c.`symbol_left`),
											- 1)) > 0,
							SUBSTRING_INDEX(c.`symbol_left`,
									TRIM(c.`symbol_left`),
									- 1),
							''))),
				c.`symbol_left`) AS 'symbol_left',
			IF(LENGTH(cm.`symbol_right`) != 0
					AND cm.`symbol_right` IS NOT NULL,
				CONCAT((IF(LENGTH(SUBSTRING_INDEX(c.`symbol_right`,
											TRIM(c.`symbol_right`),
											1)) > 0,
							SUBSTRING_INDEX(c.`symbol_right`,
									TRIM(c.`symbol_right`),
									1),
							'')),
						REPLACE(cm.`symbol_right`,
							'_default_symbol_',
							TRIM(c.`symbol_right`)),
						(IF(LENGTH(SUBSTRING_INDEX(c.`symbol_right`,
											TRIM(c.`symbol_right`),
											- 1)) > 0,
							SUBSTRING_INDEX(c.`symbol_right`,
									TRIM(c.`symbol_right`),
									- 1),
							''))),
				c.`symbol_right`) AS 'symbol_right'
			FROM
				`" . DB_PREFIX . "currency` c
					LEFT JOIN
				`" . DB_PREFIX . "currency_modsymbols` cm ON (c.`code` = cm.`code`);
		");


		foreach ($query->rows as $result) {
			$this->currencies[$result['code']] = array(
				'currency_id'   => $result['currency_id'],
				'title'         => $result['title'],
				'symbol_left'   => $result['symbol_left'],
				'symbol_right'  => $result['symbol_right'],
				'decimal_place' => $result['decimal_place'],
				'value'         => $result['value']
			);
		}
	}

	public function format($number, $currency, $value = '', $format = true) {
		$symbol_left = $this->currencies[$currency]['symbol_left'];
		$symbol_right = $this->currencies[$currency]['symbol_right'];
		$decimal_place = $this->currencies[$currency]['decimal_place'];

		if (!$value) {
			$value = $this->currencies[$currency]['value'];
		}

		$amount = $value ? (float)$number * $value : (float)$number;
		
		$amount = round($amount, (int)$decimal_place);
		
		if (!$format) {
			return $amount;
		}

		$string = '';

		if ($symbol_left) {
			$string .= $symbol_left;
		}

		$string .= number_format($amount, (int)$decimal_place, $this->language->get('decimal_point'), $this->language->get('thousand_point'));

		if ($symbol_right) {
			$string .= $symbol_right;
		}

		return $string;
	}

	public function convert($value, $from, $to) {
		if (isset($this->currencies[$from])) {
			$from = $this->currencies[$from]['value'];
		} else {
			$from = 1;
		}

		if (isset($this->currencies[$to])) {
			$to = $this->currencies[$to]['value'];
		} else {
			$to = 1;
		}

		return $value * ($to / $from);
	}
	
	public function getId($currency) {
		if (isset($this->currencies[$currency])) {
			return $this->currencies[$currency]['currency_id'];
		} else {
			return 0;
		}
	}

	public function getSymbolLeft($currency) {
		if (isset($this->currencies[$currency])) {
			return $this->currencies[$currency]['symbol_left'];
		} else {
			return '';
		}
	}

	public function getSymbolRight($currency) {
		if (isset($this->currencies[$currency])) {
			return $this->currencies[$currency]['symbol_right'];
		} else {
			return '';
		}
	}

	public function getDecimalPlace($currency) {
		if (isset($this->currencies[$currency])) {
			return $this->currencies[$currency]['decimal_place'];
		} else {
			return 0;
		}
	}

	public function getValue($currency) {
		if (isset($this->currencies[$currency])) {
			return $this->currencies[$currency]['value'];
		} else {
			return 0;
		}
	}

	public function has($currency) {
		return isset($this->currencies[$currency]);
	}
}
