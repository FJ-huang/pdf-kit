package pdf.kit.component.dto;

import lombok.Data;

import java.util.Date;

/**
 * @Author: tangshijun
 * @Desc:
 * @Date: 1:50 下午 2020/5/22
 */
@Data
public class Opportunity {

    private Long id;

    private String opportunityType;

    private String listingKey;

    private String listingId;

    private String listPrice;

    private String pictureUrl;

    private String blockId;
    /**
     * active
     */
    private String standardStatus;

    /**
     * 3083 Sq ft
     */
    private String  LivingArea;

    /**
     * 3919 Port Royal Drive
     */
    private String unparsedAddress;

    /**
     * Dallas,TX 75244
     */
    private String postalCityAndStateOrProvince;

    /**
     * 4bd
     */
    private String bedroomsTotal;
    /**
     * 4ba
     */
    private String bathroomsTotal;

    /**
     * 纬度
     */
    private String latitude;

    /**
     * 经度
     */
    private String longitude;

    private String userId;

    private Estimate estimate;

    private Date createTime;

    private Date updateTime;
}
