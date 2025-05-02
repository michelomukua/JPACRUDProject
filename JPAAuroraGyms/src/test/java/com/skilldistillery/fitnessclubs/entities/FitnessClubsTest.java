package com.skilldistillery.fitnessclubs.entities;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class FitnessClubsTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private AuroraGym gym;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAAuroraGyms");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		gym = em.find(AuroraGym.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		gym = null;
	}

	@Test
	void test_FitnessClubs_entity_mapping() {
		assertNotNull(gym);
		assertEquals("Reclaim Fitness", gym.getName());
	}

	private Object getName() {
		// TODO Auto-generated method stub
		return null;
	}

}
