package com.devpro.shop14;

import com.github.slugify.Slugify;

public class Utilities {
	public static String seo(String text) {
		return new Slugify().slugify(text);
	}
}
