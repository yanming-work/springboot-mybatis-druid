package com.demo.springboot.domain.master;

import java.io.Serializable;

public class City implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column city.cid
     *
     * @mbggenerated
     */
    private Integer cid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column city.city
     *
     * @mbggenerated
     */
    private String city;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column city.pid
     *
     * @mbggenerated
     */
    private Integer pid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table city
     *
     * @mbggenerated
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column city.cid
     *
     * @return the value of city.cid
     *
     * @mbggenerated
     */
    public Integer getCid() {
        return cid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column city.cid
     *
     * @param cid the value for city.cid
     *
     * @mbggenerated
     */
    public void setCid(Integer cid) {
        this.cid = cid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column city.city
     *
     * @return the value of city.city
     *
     * @mbggenerated
     */
    public String getCity() {
        return city;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column city.city
     *
     * @param city the value for city.city
     *
     * @mbggenerated
     */
    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column city.pid
     *
     * @return the value of city.pid
     *
     * @mbggenerated
     */
    public Integer getPid() {
        return pid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column city.pid
     *
     * @param pid the value for city.pid
     *
     * @mbggenerated
     */
    public void setPid(Integer pid) {
        this.pid = pid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table city
     *
     * @mbggenerated
     */
    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        City other = (City) that;
        return (this.getCid() == null ? other.getCid() == null : this.getCid().equals(other.getCid()))
            && (this.getCity() == null ? other.getCity() == null : this.getCity().equals(other.getCity()))
            && (this.getPid() == null ? other.getPid() == null : this.getPid().equals(other.getPid()));
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table city
     *
     * @mbggenerated
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCid() == null) ? 0 : getCid().hashCode());
        result = prime * result + ((getCity() == null) ? 0 : getCity().hashCode());
        result = prime * result + ((getPid() == null) ? 0 : getPid().hashCode());
        return result;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table city
     *
     * @mbggenerated
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", cid=").append(cid);
        sb.append(", city=").append(city);
        sb.append(", pid=").append(pid);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}