package com.skilldistillery.fitnessclubs.data;

import java.util.List;
import org.springframework.stereotype.Service;
import com.skilldistillery.fitnessclubs.entities.AuroraGym;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class FitnessClubsDaoImpl implements FitnessclubsDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public AuroraGym findById(int gymId) {
		return em.find(AuroraGym.class, gymId);
	}

	@Override
	public List<AuroraGym> findAll() {
		String jpql = "SELECT gym FROM AuroraGym gym";

		return em.createQuery(jpql, AuroraGym.class).getResultList();
	}

	@Override
	public AuroraGym addGym(AuroraGym gym) {
		System.out.println("gym" + gym.toString());
		em.persist(gym);

		em.flush();

		// em.getTransaction().commit();

		return gym;

	}

	@Override
	public void deleteById(int gymId) {
		AuroraGym gym = em.find(AuroraGym.class, gymId);
		em.remove(gym);
	}

	@Override
	public AuroraGym updateGym(AuroraGym gym) {
		em.merge(gym);
		em.flush();
		return gym;
	}

}
