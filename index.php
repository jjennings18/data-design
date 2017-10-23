<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Data Design</title>
	</head>
	<body>
		<header><strong>Data Design</strong></header>

			<h1><strong>Persona:</strong></h1>
		<p>Bob is a 27 year old college graduate who enjoys the Tech world. Bob also
			enjoys reading online articles and blogs on his spare time. Bob has recently relocated to
			Albuquerque,New Mexico from Dallas,Texas. Bob enjoys computers and new modern day technology
		and considers himself extremely tech savvy. Bob however gets extremely irritated when technology moves
		slow or wont work at all. For this reason Bob is looking to switch cell phone providers.
			Bob works as a paralegal for a law firm and most of his coworkers have T-Mobile or Verizon.
			Bob wants to find out more about coverage with both of the carriers specifically
			in certain areas around town. Bob turns to Reddit to submit a post and ask locals their
			experience with coverage. The current technology Bob uses is an iphone7
			he is looking to upgrade to and iPhone X when he decides on what service provider to go with.</p>
		<h1><strong>Story</strong></h1>
		<p>As new user on Reddit Bob wants to create a post asking locals about cell phone coverage in the area.
		Bob works for one of the best law firms in the state so it is important that he have the best cell phone coverage
		possible to stay in contact with clients and colleges when both in and out of the office.</p>

		<uL>
			<li>1. Open Reddit on your browser and sign in.</li>
			<li>2. after contacting the server your browser will display your main home page after sigining in</li>
			<li>3. Search for the category you want to post to.</li>
			<li>4. The server will send any info it thinks it relevant to the topic typed
				the the search field. and display it through your browser</li>
			<li>5. Click Submit a text post </li>
			<li>6. The browser will display a screen with fields for you to type in.</li>
			<li>7. Fill out the "title" and "text" fields as you wish. </li>
			<li>8. Check the "im not a robot" box at the bottom of the page and click submit.</li>
			<li>9. Once the website gives you confirmation that your
				post has been submitted you can no view it as you wish.</li>
		</uL>
		<h2>Profile:</h2
		<ul>
			<li>profileId(Primary key)</li>
			<li>profileActivationToken</li>
			<li>profileAtHandel</li>
			<li>ProfileEmail</li>
			<li>profilePhone</li>
			<li>profileHash(for account password)</li>
			<li>profileSalt(for account password)</li>
		</ul>
		<h3><strong>Post</strong></h3>
			<ul>
				<li>postId(primary key)</li>
				<li>postProfileId(Foreign Key)</li>
				<li>postTopic</li>
				<li>postContent</li>
				<li>postDateTime</li>
			</ul>
			<h3><strong>Comment</strong></h3>
				<ul>
					<li>commentId(primary Key)</li>
					<li>commentProfileId(Foreign Key)</li>
					<li>commentedPostId(Foreign Key)</li>
					<li>commentCommentId(Foreign Key)</li>
					<li>commentDateTime</li>
				</ul>
		<h4>Relations</h4>
		<p>One post can have many comments (1 - n)</p>
		<p>One comment can have many comments (1 - n)</p>
		<P>One user can post many post (1 - n)</P>

		<img src="image/data-design-erd.svg"/>
	</body>
</html>