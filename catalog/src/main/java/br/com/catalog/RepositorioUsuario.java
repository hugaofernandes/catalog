package br.com.catalog;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "usuario", path = "usuario")
public interface RepositorioUsuario extends PagingAndSortingRepository<Usuario, Integer>{

	
}
