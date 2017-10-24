<?php
/**
 * Description: Making class for profile
 *
 * Author: jermainjennings
 *
 * Date: 10/21/17
 */
class profile {

	/**
	 * id used for profile; this is the primary key
	 * @var $profileId
	 */
	private $profileId;

	/**
	 * profileActivationToken; activation for profile
	 * @var $profileActivationToken
	 */
	private $profileActivationToken;

	/**
	 * Handle for profile
	 * @var $profileHandle
	 */
	private $profileHandle;

/**
 * email for profile
 * @var $profileEmail
 */
private $profileEmail;

/**
 * Hash for profile
 * @var  $profileHash
 */
private $profileHash;

/**
 * phone number for profile
 * @var $profilePhone
 */
private $profilePhone;

/**
 * salt for profile
 * @var $porfileSalt
 */
private $profileSalt;

	/** constructor for this profile
	 *
	 */
	public function __construct($newprofileid,$newprofileActivationToken,
										 $newprofileHandle, $newprofileEmail, $newprofileHash,
										 $newprofilePhone, $newprofileSalt  ) {
		TRY {
			$this->setprofileId($newprofileid);
			$this->setprofileActivationToken($newprofileActivationToken);
			$this->setprofileHandle($newprofileHandle);
			$this->setprofileEmail($newprofileEmail);
			$this->setprofileHash($newprofileHash);
			$this->setprofilePhone($newprofilePhone);
			$this->setprofileSalt($newprofileSalt);
			}
			catch(\InvalidArgumentException | \RangeException | \Exception | \TypeError $exception)
	}
}

