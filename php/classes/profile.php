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
	public function __construct($newprofileid, $newprofileActivationToken,
										 $newprofileHandle, $newprofileEmail, $newprofileHash,
										 $newprofilePhone, $newprofileSalt) {
		TRY {
			$this->setprofileId($newprofileid);
			$this->setprofileActivationToken($newprofileActivationToken);
			$this->setprofileHandle($newprofileHandle);
			$this->setprofileEmail($newprofileEmail);
			$this->setprofileHash($newprofileHash);
			$this->setprofilePhone($newprofilePhone);
			$this->setprofileSalt($newprofileSalt);
		} catch(\InvalidArgumentException | \RangeException | \Exception | \TypeError $exception) {
			$exceptionType = get_class($exception);
			throw(new $exceptionType($exception->getMessage(), 0, $exception));
		}
	}
}
/**
 * accessor method for profile
 *
 */

public function getProfileId(): Uuid {
	return ($this->profileId);
}

/**
 * Mutator method for profile.
 */
public function setProfileId($newProfileId): void {
	try {
		$uuid = self::validation($newProfileId);
	} catch(\InvalidArgumentException | \RangeException | \Exception | \TypeError $exception) {
		$exceptionType = get_class ($exception);
		throw(new $exceptionType($exception->getMessage(), 0, $exception));
	}
	$this->profileId = $uuid
}

/**
 * accessor method for account activation token
 *
 * @return string value of the activation token
 **/
public function getProfileActivationToken() : ?string {
	return ($this->profileActivationToken);
}

/**
 * mutator method for account activation token
 *
 * @param string $newProfileActivationToken
 * @throws \InvalidArgumentException  if the token is not a string or insecure
 * @throws \RangeException if the token is not exactly 32 characters
 * @throws \TypeError if the activation token is not a string
 **/
public function setProfileActivationToken(?string $newProfileActivationToken): void {
	if($newProfileActivationToken === null) {
		$this->profileActivationToken = null;
		return;
	}
	$newProfileActivationToken = strtolower(trim($newProfileActivationToken));
	if(ctype_xdigit($newProfileActivationToken) === false) {
		throw(new\RangeException("user activation is not valid"));
	}
	//make sure user activation token is only 32 characters
	if(strlen($newProfileActivationToken) !== 32) {
		throw(new\RangeException("user activation token has to be 32"));
	}
	$this->profileActivationToken = $newProfileActivationToken;
}

