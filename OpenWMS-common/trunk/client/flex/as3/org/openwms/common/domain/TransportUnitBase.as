/**
 * Generated by Gas3 v2.0.0 (Granite Data Services).
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERWRITTEN EACH TIME YOU USE
 * THE GENERATOR. INSTEAD, EDIT THE INHERITED CLASS (TransportUnit.as).
 */

package org.openwms.common.domain {

    import flash.events.EventDispatcher;
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import flash.utils.IExternalizable;
    import flash.utils.getQualifiedClassName;
    import mx.collections.ListCollectionView;
    import mx.core.IUID;
    import mx.utils.UIDUtil;
    import org.granite.collections.IMap;
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;
    import org.granite.tide.IEntity;
    import org.granite.tide.IEntityManager;
    import org.granite.tide.IPropertyHolder;
    import org.granite.util.Enum;
    import org.openwms.common.domain.system.usermanagement.User;
    import org.openwms.common.domain.values.Barcode;

    use namespace meta;

    [Managed]
    public class TransportUnitBase implements IExternalizable, IUID {

        protected var _em:IEntityManager = null;

        private var __initialized:Boolean = true;
        private var __detachedState:String = null;

        private var _actualLocation:Location;
        private var _actualLocationDate:Date;
        private var _barcode:Barcode;
        private var _children:ListCollectionView;
        private var _creationDate:Date;
        private var _empty:Boolean;
        private var _errors:IMap;
        private var _id:Number;
        private var _inventoryDate:Date;
        private var _inventoryUser:User;
        private var _parent:TransportUnit;
        private var _state:TransportUnit$TU_STATE;
        private var _targetLocation:Location;
        private var _transportUnitType:TransportUnitType;
        private var _version:Number;
        private var _weight:Number;

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __initialized;

            var property:* = this[name];
            return (
                (!(property is TransportUnit) || (property as TransportUnit).meta::isInitialized()) &&
                (!(property is IPersistentCollection) || (property as IPersistentCollection).isInitialized())
            );
        }

        [Transient]
        public function meta_getEntityManager():IEntityManager {
            return _em;
        }
        public function meta_setEntityManager(em:IEntityManager):void {
            _em = em;
        }

        public function set actualLocation(value:Location):void {
            _actualLocation = value;
        }
        public function get actualLocation():Location {
            return _actualLocation;
        }

        public function set actualLocationDate(value:Date):void {
            _actualLocationDate = value;
        }
        public function get actualLocationDate():Date {
            return _actualLocationDate;
        }

        public function set barcode(value:Barcode):void {
            _barcode = value;
        }
        public function get barcode():Barcode {
            return _barcode;
        }

        public function get children():ListCollectionView {
            return _children;
        }

        public function get creationDate():Date {
            return _creationDate;
        }

        public function set empty(value:Boolean):void {
            _empty = value;
        }

        public function get errors():IMap {
            return _errors;
        }

        public function get id():Number {
            return _id;
        }

        public function set inventoryDate(value:Date):void {
            _inventoryDate = value;
        }
        public function get inventoryDate():Date {
            return _inventoryDate;
        }

        public function set inventoryUser(value:User):void {
            _inventoryUser = value;
        }
        public function get inventoryUser():User {
            return _inventoryUser;
        }

        public function set parent(value:TransportUnit):void {
            _parent = value;
        }
        public function get parent():TransportUnit {
            return _parent;
        }

        public function set state(value:TransportUnit$TU_STATE):void {
            _state = value;
        }
        public function get state():TransportUnit$TU_STATE {
            return _state;
        }

        public function set targetLocation(value:Location):void {
            _targetLocation = value;
        }
        public function get targetLocation():Location {
            return _targetLocation;
        }

        public function set transportUnitType(value:TransportUnitType):void {
            _transportUnitType = value;
        }
        public function get transportUnitType():TransportUnitType {
            return _transportUnitType;
        }

        [Version]
        public function get version():Number {
            return _version;
        }

        public function set weight(value:Number):void {
            _weight = value;
        }
        public function get weight():Number {
            return _weight;
        }

        public function set uid(value:String):void {
            // noop...
        }
        public function get uid():String {
        	if (isNaN(_id))
        		return UIDUtil.createUID();
        	return getQualifiedClassName(this) + "#[" + String(_id) + "]";
        	
        }

        public function meta_merge(em:IEntityManager, obj:*):void {
            var src:TransportUnitBase = TransportUnitBase(obj);
            __initialized = src.__initialized;
            __detachedState = src.__detachedState;
            if (meta::isInitialized()) {
               em.meta_mergeExternal(src._actualLocation, _actualLocation, null, this, 'actualLocation', function setter(o:*):void{_actualLocation = o as Location});
               em.meta_mergeExternal(src._actualLocationDate, _actualLocationDate, null, this, 'actualLocationDate', function setter(o:*):void{_actualLocationDate = o as Date});
               em.meta_mergeExternal(src._barcode, _barcode, null, this, 'barcode', function setter(o:*):void{_barcode = o as Barcode});
               em.meta_mergeExternal(src._children, _children, null, this, 'children', function setter(o:*):void{_children = o as ListCollectionView});
               em.meta_mergeExternal(src._creationDate, _creationDate, null, this, 'creationDate', function setter(o:*):void{_creationDate = o as Date});
               em.meta_mergeExternal(src._empty, _empty, null, this, 'empty', function setter(o:*):void{_empty = o as Boolean});
               em.meta_mergeExternal(src._errors, _errors, null, this, 'errors', function setter(o:*):void{_errors = o as IMap});
               em.meta_mergeExternal(src._id, _id, null, this, 'id', function setter(o:*):void{_id = o as Number});
               em.meta_mergeExternal(src._inventoryDate, _inventoryDate, null, this, 'inventoryDate', function setter(o:*):void{_inventoryDate = o as Date});
               em.meta_mergeExternal(src._inventoryUser, _inventoryUser, null, this, 'inventoryUser', function setter(o:*):void{_inventoryUser = o as User});
               em.meta_mergeExternal(src._parent, _parent, null, this, 'parent', function setter(o:*):void{_parent = o as TransportUnit});
               em.meta_mergeExternal(src._state, _state, null, this, 'state', function setter(o:*):void{_state = o as TransportUnit$TU_STATE});
               em.meta_mergeExternal(src._targetLocation, _targetLocation, null, this, 'targetLocation', function setter(o:*):void{_targetLocation = o as Location});
               em.meta_mergeExternal(src._transportUnitType, _transportUnitType, null, this, 'transportUnitType', function setter(o:*):void{_transportUnitType = o as TransportUnitType});
               em.meta_mergeExternal(src._version, _version, null, this, 'version', function setter(o:*):void{_version = o as Number});
               em.meta_mergeExternal(src._weight, _weight, null, this, 'weight', function setter(o:*):void{_weight = o as Number});
            }
            else {
               em.meta_mergeExternal(src._id, _id, null, this, 'id', function setter(o:*):void{_id = o as Number});
            }
        }

        public function readExternal(input:IDataInput):void {
            __initialized = input.readObject() as Boolean;
            __detachedState = input.readObject() as String;
            if (meta::isInitialized()) {
                _actualLocation = input.readObject() as Location;
                _actualLocationDate = input.readObject() as Date;
                _barcode = input.readObject() as Barcode;
                _children = input.readObject() as ListCollectionView;
                _creationDate = input.readObject() as Date;
                _empty = input.readObject() as Boolean;
                _errors = input.readObject() as IMap;
                _id = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _inventoryDate = input.readObject() as Date;
                _inventoryUser = input.readObject() as User;
                _parent = input.readObject() as TransportUnit;
                _state = Enum.readEnum(input) as TransportUnit$TU_STATE;
                _targetLocation = input.readObject() as Location;
                _transportUnitType = input.readObject() as TransportUnitType;
                _version = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _weight = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
            else {
                _id = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        public function writeExternal(output:IDataOutput):void {
            output.writeObject(__initialized);
            output.writeObject(__detachedState);
            if (meta::isInitialized()) {
                output.writeObject((_actualLocation is IPropertyHolder) ? IPropertyHolder(_actualLocation).object : _actualLocation);
                output.writeObject((_actualLocationDate is IPropertyHolder) ? IPropertyHolder(_actualLocationDate).object : _actualLocationDate);
                output.writeObject((_barcode is IPropertyHolder) ? IPropertyHolder(_barcode).object : _barcode);
                output.writeObject((_children is IPropertyHolder) ? IPropertyHolder(_children).object : _children);
                output.writeObject((_creationDate is IPropertyHolder) ? IPropertyHolder(_creationDate).object : _creationDate);
                output.writeObject((_empty is IPropertyHolder) ? IPropertyHolder(_empty).object : _empty);
                output.writeObject((_errors is IPropertyHolder) ? IPropertyHolder(_errors).object : _errors);
                output.writeObject((_id is IPropertyHolder) ? IPropertyHolder(_id).object : _id);
                output.writeObject((_inventoryDate is IPropertyHolder) ? IPropertyHolder(_inventoryDate).object : _inventoryDate);
                output.writeObject((_inventoryUser is IPropertyHolder) ? IPropertyHolder(_inventoryUser).object : _inventoryUser);
                output.writeObject((_parent is IPropertyHolder) ? IPropertyHolder(_parent).object : _parent);
                output.writeObject((_state is IPropertyHolder) ? IPropertyHolder(_state).object : _state);
                output.writeObject((_targetLocation is IPropertyHolder) ? IPropertyHolder(_targetLocation).object : _targetLocation);
                output.writeObject((_transportUnitType is IPropertyHolder) ? IPropertyHolder(_transportUnitType).object : _transportUnitType);
                output.writeObject((_version is IPropertyHolder) ? IPropertyHolder(_version).object : _version);
                output.writeObject((_weight is IPropertyHolder) ? IPropertyHolder(_weight).object : _weight);
            }
            else {
                output.writeObject(_id);
            }
        }
    }
}
