package com.heys.dating.service.dto.message;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@XmlRootElement
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ThreadListDTO {
	List<ThreadPreviewDTO> threadPreviews;
}
