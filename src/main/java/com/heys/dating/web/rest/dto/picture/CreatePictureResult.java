package com.heys.dating.web.rest.dto.picture;

import javax.xml.bind.annotation.XmlRootElement;

import com.heys.dating.web.rest.dto.SuccessResult;

@XmlRootElement
public class CreatePictureResult extends SuccessResult {

	public CreatePictureResult(final String pictureKey) {
		super(true);
	}

}