package pdf.kit;

import lombok.Data;

import java.util.List;

/**
 * Created by fgm on 2017/4/17.
 */
@Data
public class TemplateTestBO {

    private String templateName;

    private String freeMarkerUrl;

    private List<String> picUrlList;

    private List<String> descList;

    private List<String> offerPrice;

}
