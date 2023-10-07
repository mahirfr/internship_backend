package com.mdesign.data.api.service;

import com.mdesign.data.api.model.Person;
import com.mdesign.data.api.repository.PersonRepository;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Data
@Service
public class PersonService {

    private final PersonRepository personRepository;

    public PersonService(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    public Optional<Person> getPerson(final Long id) {
        return personRepository.findById(id);
    }

    public Iterable<Person> getPersons() {
        return personRepository.findAll();
    }

    public Iterable<Person> getPersonByLastNameOrFirstNameContaining(String query) {
        return personRepository.getPersonByLastNameContainingIgnoreCaseOrFirstNameContainingIgnoreCase(query, query);
    }

    public void deletePerson(final Long id) {
        personRepository.deleteById(id);
    }

    public Person savePerson(Person person) {
        return personRepository.save(person);
    }
}
