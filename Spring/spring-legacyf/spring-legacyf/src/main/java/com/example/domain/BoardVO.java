package com.example.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class BoardVO {
	
	private int num;   // 글 번호
	private String mid;
	private String subject;
	private String content;
	private int readcount;
	private Date regDate;
	private String ipaddr;
	private int reRef;  // 글 그룹 번호. 주글 번호와 같음
	private int reLev;  // 글목록에서 글 들여쓰기 레벨
	private int reSeq;  // 글 그룹 내에서의 순번
	
	//private AttachVO attachVO;       // SQL JOIN 쿼리에서 1:1 관계
	private List<AttachVO> attachList; // SQL JOIN 쿼리에서 1:N 관계
}





