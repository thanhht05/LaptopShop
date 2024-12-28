package javaspring.Laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import javaspring.Laptopshop.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);
}
