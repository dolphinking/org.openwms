/*
 * openwms.org, the Open Warehouse Management System.
 *
 * This file is part of openwms.org.
 *
 * openwms.org is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * openwms.org is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this software. If not, write to the Free
 * Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
 * 02110-1301 USA, or see the FSF site: http://www.fsf.org.
 */
package org.openwms.web.flex.client.common.event
{
    import flash.events.Event;

    /**
     * A LocationTypeEvent.
     *
     * @author <a href="mailto:openwms@googlemail.com">Heiko Scherrer</a>
     * @version $Revision: 771 $
     */
    public class LocationTypeEvent extends Event
    {
        public static const LOAD_ALL_LOCATION_TYPES:String = "LOAD_ALL_LOCATION_TYPES";
        public static const CREATE_LOCATION_TYPE:String = "CREATE_LOCATION_TYPE";
        public static const DELETE_LOCATION_TYPE:String = "DELETE_LOCATION_TYPE";
        public static const SAVE_LOCATION_TYPE:String = "SAVE_LOCATION_TYPE";
        
        public var data:*;

        public function LocationTypeEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            super(type, bubbles, cancelable);
        }

    }
}