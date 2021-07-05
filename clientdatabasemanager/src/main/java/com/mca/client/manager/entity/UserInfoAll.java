package com.mca.client.manager.entity;

import lombok.Data;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class UserInfoAll {

    private Long id;

    private String userName;

    private String userAuthorities;

    private String userNick;

    private String userImg;

    private String userText;


}
