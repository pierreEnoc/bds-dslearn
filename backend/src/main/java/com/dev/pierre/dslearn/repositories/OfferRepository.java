package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Offer;

public interface OfferRepository extends JpaRepository<Offer, Long> {

}
