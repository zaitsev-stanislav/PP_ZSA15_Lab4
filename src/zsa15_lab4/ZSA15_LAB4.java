package zsa15_lab4;

import java.util.List;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;

public class ZSA15_LAB4 {

    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        CriteriaBuilder cb = session.getCriteriaBuilder();

        CriteriaQuery<MicrowaveSpec> criteriaMicrowaveSpec = cb.createQuery(MicrowaveSpec.class);
        Root<MicrowaveSpec> rootMicrowaveSpec = criteriaMicrowaveSpec.from(MicrowaveSpec.class);
        criteriaMicrowaveSpec.select(rootMicrowaveSpec).where(cb.like(rootMicrowaveSpec.get("sizes"), "%291х488%"));

        CriteriaQuery<Microwave> criteriaMicrowave = cb.createQuery(Microwave.class);
        Root<Microwave> rootMicrowave = criteriaMicrowave.from(Microwave.class);
        Predicate[] predicates = new Predicate[2];
        predicates[0] = cb.like(rootMicrowave.get("brand"), "%RG%");
        predicates[1] = cb.like(rootMicrowave.get("model"), "%G-20%");
        criteriaMicrowave.select(rootMicrowave).where(predicates);

        MicrowaveSpec microwaveSpec1 = new MicrowaveSpec();
        microwaveSpec1.setVolume(17);
        microwaveSpec1.setSizes("45.2x26.2x31.5 sm");
        session.save(microwaveSpec1);

        MicrowaveSpec microwaveSpec2 = new MicrowaveSpec();
        microwaveSpec2.setVolume(20);
        microwaveSpec2.setSizes("44х35.8х25.9 sm");
        session.save(microwaveSpec2);

        org.hibernate.Transaction tr = session.beginTransaction();
//        session.delete(watchsAddition1);
//        session.delete(watchsAddition2);
        tr.commit();

        Microwave watch = new Microwave();
        watch.setBrand("ARG");
        watch.setModel("MG-2011M");
        watch.setMicrowaveSpec(new MicrowaveSpec(20, "291х488х380 mm"));
        session.save(watch);

        watch = (Microwave) session.get(Microwave.class, watch.getId());
        session.save(watch);

        List<Microwave> resultsWatchs = session.createQuery(criteriaMicrowave).getResultList();
        resultsWatchs.forEach((item) -> {
            System.out.println(item);
        });

        List<MicrowaveSpec> resultsWatchsAddition = session.createQuery(criteriaMicrowaveSpec).getResultList();
        resultsWatchsAddition.forEach((item) -> {
            System.out.println(item);
        });

        session.close();

        System.exit(0);
    }

}
