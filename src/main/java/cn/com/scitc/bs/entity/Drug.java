package cn.com.scitc.bs.entity;

/**
 * @author 陶大爷
 */
public class Drug {
    private Integer id;
    private String y_name;
    private String u_name;
    private String d_name;

    private Integer drugPrice;

    private String drugPhoneDoc;
    private String drugTime;

    public Drug() {
    }

    public Drug(Integer id, String y_name,Integer drugPrice, String u_name, String d_name, String drugPhoneDoc, String drugTime) {
        this.id = id;
        this.y_name = y_name;
        this.u_name = u_name;
        this.d_name = d_name;
        this.drugPhoneDoc = drugPhoneDoc;
        this.drugTime = drugTime;
        this.drugPrice = drugPrice;
    }

    public Integer getDrugPrice() {
        return drugPrice;
    }

    public void setDrugPrice(Integer drugPrice) {
        this.drugPrice = drugPrice;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getY_name() {
        return y_name;
    }

    public void setY_name(String y_name) {
        this.y_name = y_name;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getD_name() {
        return d_name;
    }

    public void setD_name(String d_name) {
        this.d_name = d_name;
    }

    public String getDrugPhoneDoc() {
        return drugPhoneDoc;
    }

    public void setDrugPhoneDoc(String drugPhoneDoc) {
        this.drugPhoneDoc = drugPhoneDoc;
    }

    public String getDrugTime() {
        return drugTime;
    }

    public void setDrugTime(String drugTime) {
        this.drugTime = drugTime;
    }
}
