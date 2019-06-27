package beans;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "runactivity", schema = "run", catalog = "")
public class RunactivityEntity {
    private int id;
    private String place;
    private Integer totalPeople;
    private Timestamp startTime;
    private Timestamp endTime;
    private Integer nowPeople;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "place")
    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    @Basic
    @Column(name = "total_people")
    public Integer getTotalPeople() {
        return totalPeople;
    }

    public void setTotalPeople(Integer totalPeople) {
        this.totalPeople = totalPeople;
    }

    @Basic
    @Column(name = "start_time")
    public Timestamp getStartTime() {
        return startTime;
    }

    public void setStartTime(Timestamp startTime) {
        this.startTime = startTime;
    }

    @Basic
    @Column(name = "end_time")
    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    @Basic
    @Column(name = "now_people")
    public Integer getNowPeople() {
        return nowPeople;
    }

    public void setNowPeople(Integer nowPeople) {
        this.nowPeople = nowPeople;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RunactivityEntity that = (RunactivityEntity) o;
        return id == that.id &&
                Objects.equals(place, that.place) &&
                Objects.equals(totalPeople, that.totalPeople) &&
                Objects.equals(startTime, that.startTime) &&
                Objects.equals(endTime, that.endTime) &&
                Objects.equals(nowPeople, that.nowPeople);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, place, totalPeople, startTime, endTime, nowPeople);
    }
}
