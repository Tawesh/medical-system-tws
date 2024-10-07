package cn.com.scitc.bs.entity;

/**
 * @author:Tws
 * @date:2023/6/1710:42
 */
public class BodyData {

    private Integer heart;
    private Integer largeIntestine;
    private Integer smallIntestine;
    private Integer spleen;
    private Integer kidney;
    private Integer lung;
    private Integer liver;
    private Integer sickId;

    public BodyData(Integer heart, Integer largeIntestine, Integer smallIntestine, Integer spleen, Integer kidney, Integer lung, Integer liver, Integer sickId) {
        this.heart = heart;
        this.largeIntestine = largeIntestine;
        this.smallIntestine = smallIntestine;
        this.spleen = spleen;
        this.kidney = kidney;
        this.lung = lung;
        this.liver = liver;
        this.sickId = sickId;
    }

    public Integer getHeart() {
        return heart;
    }

    public void setHeart(Integer heart) {
        this.heart = heart;
    }

    public Integer getLargeIntestine() {
        return largeIntestine;
    }

    public void setLargeIntestine(Integer largeIntestine) {
        this.largeIntestine = largeIntestine;
    }

    public Integer getSmallIntestine() {
        return smallIntestine;
    }

    public void setSmallIntestine(Integer smallIntestine) {
        this.smallIntestine = smallIntestine;
    }

    public Integer getSpleen() {
        return spleen;
    }

    public void setSpleen(Integer spleen) {
        this.spleen = spleen;
    }

    public Integer getKidney() {
        return kidney;
    }

    public void setKidney(Integer kidney) {
        this.kidney = kidney;
    }

    public Integer getLung() {
        return lung;
    }

    public void setLung(Integer lung) {
        this.lung = lung;
    }

    public Integer getLiver() {
        return liver;
    }

    public void setLiver(Integer liver) {
        this.liver = liver;
    }

    public Integer getSickId() {
        return sickId;
    }

    public void setSickId(Integer sickId) {
        this.sickId = sickId;
    }
}
