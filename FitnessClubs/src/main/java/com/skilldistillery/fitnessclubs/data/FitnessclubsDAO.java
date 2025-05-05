package com.skilldistillery.fitnessclubs.data;

import java.util.List;

import com.skilldistillery.fitnessclubs.entities.AuroraGym;

public interface FitnessclubsDAO {

	AuroraGym findById(int gymId);

	List<AuroraGym> findAll();

	AuroraGym addGym(AuroraGym gym);

	void deleteById(int gymId);

	AuroraGym updateGym(AuroraGym gym);
}
