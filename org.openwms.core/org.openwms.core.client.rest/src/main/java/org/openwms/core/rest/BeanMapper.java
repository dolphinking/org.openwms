/*
 * openwms.org, the Open Warehouse Management System.
 * Copyright (C) 2014 Heiko Scherrer
 *
 * This file is part of openwms.org.
 *
 * openwms.org is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as 
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * openwms.org is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software. If not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
 * 02110-1301 USA, or see the FSF site: http://www.fsf.org.
 */
package org.openwms.core.rest;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.dozer.Mapper;
import org.dozer.MappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * A BeanMapper.
 * 
 * @author <a href="mailto:scherrer@openwms.org">Heiko Scherrer</a>
 * @version $Revision: $
 * @since 0.1
 */
@Component("beanMapper")
public class BeanMapper<S, T> {

    @Autowired
    private Mapper mapper;

    public T map(S domainEntity, Class<T> clazz) {
        return mapper.map(domainEntity, clazz);
    }

    public S mapBackwards(T domainEntity, Class<S> clazz) {
        return mapper.map(domainEntity, clazz);
    }

    /**
     * Performs mapping between source and destination objects
     * 
     * @param source
     * @param target
     * @return target
     * @throws MappingException
     */
    public S mapFromTo(S source, S target) {
        mapper.map(source, target);
        return target;
    }

    public Collection<T> map(Collection<S> domainEntities, Class<T> clazz) {
        if (domainEntities == null || domainEntities.isEmpty()) {
            return Collections.<T> emptyList();
        }
        List<T> result = new ArrayList<>(domainEntities.size());
        for (S domainEntity : domainEntities) {
            result.add(mapper.map(domainEntity, clazz));
        }
        return result;
    }

    public Collection<S> mapBackwards(Collection<T> domainEntities, Class<S> clazz) {
        if (domainEntities == null || domainEntities.isEmpty()) {
            return Collections.<S> emptyList();
        }
        List<S> result = new ArrayList<>(domainEntities.size());
        for (T domainEntity : domainEntities) {
            result.add(mapper.map(domainEntity, clazz));
        }
        return result;
    }
}
