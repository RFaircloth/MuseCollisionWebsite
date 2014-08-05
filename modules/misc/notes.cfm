
Media Query Ranges


	- 1024 and above, landscape (iPad 1 - 1024, above desktop)

	- 962 - 1023, landscape (Nexus 7 - 962)

	- 640 - 961, landscape (Galaxy S3 - 640)

	- 480 - 639, landscape (iPhone 4s - 480)


	- 768, portrait (iPad 1 - 768)

	- 601 - 767, portrait (Nexus 7 - 601)

	- 360 - 600, portrait (Galaxy S3 - 360)

	- 320 - 359, portrait (iPhone 4s - 320)




	/* --- [ smartphones (portrait and landscape) ] --- */

		@media screen and (min-width:320px) and (max-width:480px) {}



	/* --- [ smartphones (landscape) ] --- */

		@media screen and (min-width:321px) {}



	/* --- [ smartphones (portrait) ] --- */

		@media screen and (max-width:320px) {}



	/* --- [ iPads (portrait and landscape) ] --- */

		@media screen and (min-width:768) and (max-width:1024px) {}



	/* --- [ iPads (landscape) ] --- */

		@media screen and (min-width:768px) and (max-width:1024px) and (orientation:landscape) {}



	/* --- [ iPad Mini (portrait) ] --- */

		@media screen and (min-width:768px) and (max-width:1024px) and (orientation:portrait) {}



	/* --- [ desktops and laptops ] --- */

		@media screen and (min-width:1224px) {}



	/* --- [ large screens ] --- */

		@media screen and (min-width:1824px) {}



	/* --- [ iPhone 4 ] --- */

		@media screen and (-webkit-min-device-pixel-ratio:1.5),
				 screen and (-min-device-pixel-ratio:1.5) {}



	/* --- [ iPhone 5 ] --- */

