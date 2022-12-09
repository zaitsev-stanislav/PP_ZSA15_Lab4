package zsa15_lab4;

public class MicrowaveSpec {

    private Integer id;
    private int volume;
    private String sizes;

    public MicrowaveSpec() {
    }

    public MicrowaveSpec(int volume, String sizes) {
        this.volume = volume;
        this.sizes = sizes;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getVolume() {
        return volume;
    }

    public void setVolume(int volume) {
        this.volume = volume;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    @Override
    public String toString() {
        return "Specifications {" + "id = " + id + ", volume = " + volume + ", sizes = " + sizes + '}';
    }
}
