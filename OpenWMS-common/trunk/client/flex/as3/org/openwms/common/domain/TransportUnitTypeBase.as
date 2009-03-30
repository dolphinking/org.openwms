/**
 * Generated by Gas3 v2.0.0 (Granite Data Services).
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERWRITTEN EACH TIME YOU USE
 * THE GENERATOR. INSTEAD, EDIT THE INHERITED CLASS (TransportUnitType.as).
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
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;
    import org.granite.tide.IEntity;
    import org.granite.tide.IEntityManager;
    import org.granite.tide.IPropertyHolder;

    use namespace meta;

    [Managed]
    public class TransportUnitTypeBase implements IExternalizable, IUID {

        protected var _em:IEntityManager = null;

        private var __initialized:Boolean = true;
        private var __detachedState:String = null;

        private var _compatibility:String;
        private var _description:String;
        private var _height:int;
        private var _length:int;
        private var _payload:Number;
        private var _transportUnits:ListCollectionView;
        private var _type:String;
        private var _typePlacingRules:ListCollectionView;
        private var _typeStackingRules:ListCollectionView;
        private var _version:Number;
        private var _weightMax:Number;
        private var _weightTare:Number;
        private var _width:int;

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __initialized;

            var property:* = this[name];
            return (
                (!(property is TransportUnitType) || (property as TransportUnitType).meta::isInitialized()) &&
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

        public function set compatibility(value:String):void {
            _compatibility = value;
        }
        public function get compatibility():String {
            return _compatibility;
        }

        public function set description(value:String):void {
            _description = value;
        }
        public function get description():String {
            return _description;
        }

        public function set height(value:int):void {
            _height = value;
        }
        public function get height():int {
            return _height;
        }

        public function set length(value:int):void {
            _length = value;
        }
        public function get length():int {
            return _length;
        }

        public function set payload(value:Number):void {
            _payload = value;
        }
        public function get payload():Number {
            return _payload;
        }

        public function set transportUnits(value:ListCollectionView):void {
            _transportUnits = value;
        }
        public function get transportUnits():ListCollectionView {
            return _transportUnits;
        }

        public function set type(value:String):void {
            _type = value;
        }
        public function get type():String {
            return _type;
        }

        public function set typePlacingRules(value:ListCollectionView):void {
            _typePlacingRules = value;
        }
        public function get typePlacingRules():ListCollectionView {
            return _typePlacingRules;
        }

        public function set typeStackingRules(value:ListCollectionView):void {
            _typeStackingRules = value;
        }
        public function get typeStackingRules():ListCollectionView {
            return _typeStackingRules;
        }

        [Version]
        public function get version():Number {
            return _version;
        }

        public function set weightMax(value:Number):void {
            _weightMax = value;
        }
        public function get weightMax():Number {
            return _weightMax;
        }

        public function set weightTare(value:Number):void {
            _weightTare = value;
        }
        public function get weightTare():Number {
            return _weightTare;
        }

        public function set width(value:int):void {
            _width = value;
        }
        public function get width():int {
            return _width;
        }

        public function set uid(value:String):void {
            // noop...
        }
        public function get uid():String {
        	if (!_type)
        		return UIDUtil.createUID();
        	return getQualifiedClassName(this) + "#[" + String(_type) + "]";
        	
        }

        public function meta_merge(em:IEntityManager, obj:*):void {
            var src:TransportUnitTypeBase = TransportUnitTypeBase(obj);
            __initialized = src.__initialized;
            __detachedState = src.__detachedState;
            if (meta::isInitialized()) {
               em.meta_mergeExternal(src._compatibility, _compatibility, null, this, 'compatibility', function setter(o:*):void{_compatibility = o as String});
               em.meta_mergeExternal(src._description, _description, null, this, 'description', function setter(o:*):void{_description = o as String});
               em.meta_mergeExternal(src._height, _height, null, this, 'height', function setter(o:*):void{_height = o as int});
               em.meta_mergeExternal(src._length, _length, null, this, 'length', function setter(o:*):void{_length = o as int});
               em.meta_mergeExternal(src._payload, _payload, null, this, 'payload', function setter(o:*):void{_payload = o as Number});
               em.meta_mergeExternal(src._transportUnits, _transportUnits, null, this, 'transportUnits', function setter(o:*):void{_transportUnits = o as ListCollectionView});
               em.meta_mergeExternal(src._type, _type, null, this, 'type', function setter(o:*):void{_type = o as String});
               em.meta_mergeExternal(src._typePlacingRules, _typePlacingRules, null, this, 'typePlacingRules', function setter(o:*):void{_typePlacingRules = o as ListCollectionView});
               em.meta_mergeExternal(src._typeStackingRules, _typeStackingRules, null, this, 'typeStackingRules', function setter(o:*):void{_typeStackingRules = o as ListCollectionView});
               em.meta_mergeExternal(src._version, _version, null, this, 'version', function setter(o:*):void{_version = o as Number});
               em.meta_mergeExternal(src._weightMax, _weightMax, null, this, 'weightMax', function setter(o:*):void{_weightMax = o as Number});
               em.meta_mergeExternal(src._weightTare, _weightTare, null, this, 'weightTare', function setter(o:*):void{_weightTare = o as Number});
               em.meta_mergeExternal(src._width, _width, null, this, 'width', function setter(o:*):void{_width = o as int});
            }
            else {
               em.meta_mergeExternal(src._type, _type, null, this, 'type', function setter(o:*):void{_type = o as String});
            }
        }

        public function readExternal(input:IDataInput):void {
            __initialized = input.readObject() as Boolean;
            __detachedState = input.readObject() as String;
            if (meta::isInitialized()) {
                _compatibility = input.readObject() as String;
                _description = input.readObject() as String;
                _height = input.readObject() as int;
                _length = input.readObject() as int;
                _payload = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _transportUnits = input.readObject() as ListCollectionView;
                _type = input.readObject() as String;
                _typePlacingRules = input.readObject() as ListCollectionView;
                _typeStackingRules = input.readObject() as ListCollectionView;
                _version = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _weightMax = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _weightTare = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _width = input.readObject() as int;
            }
            else {
                _type = input.readObject() as String;
            }
        }

        public function writeExternal(output:IDataOutput):void {
            output.writeObject(__initialized);
            output.writeObject(__detachedState);
            if (meta::isInitialized()) {
                output.writeObject((_compatibility is IPropertyHolder) ? IPropertyHolder(_compatibility).object : _compatibility);
                output.writeObject((_description is IPropertyHolder) ? IPropertyHolder(_description).object : _description);
                output.writeObject((_height is IPropertyHolder) ? IPropertyHolder(_height).object : _height);
                output.writeObject((_length is IPropertyHolder) ? IPropertyHolder(_length).object : _length);
                output.writeObject((_payload is IPropertyHolder) ? IPropertyHolder(_payload).object : _payload);
                output.writeObject((_transportUnits is IPropertyHolder) ? IPropertyHolder(_transportUnits).object : _transportUnits);
                output.writeObject((_type is IPropertyHolder) ? IPropertyHolder(_type).object : _type);
                output.writeObject((_typePlacingRules is IPropertyHolder) ? IPropertyHolder(_typePlacingRules).object : _typePlacingRules);
                output.writeObject((_typeStackingRules is IPropertyHolder) ? IPropertyHolder(_typeStackingRules).object : _typeStackingRules);
                output.writeObject((_version is IPropertyHolder) ? IPropertyHolder(_version).object : _version);
                output.writeObject((_weightMax is IPropertyHolder) ? IPropertyHolder(_weightMax).object : _weightMax);
                output.writeObject((_weightTare is IPropertyHolder) ? IPropertyHolder(_weightTare).object : _weightTare);
                output.writeObject((_width is IPropertyHolder) ? IPropertyHolder(_width).object : _width);
            }
            else {
                output.writeObject(_type);
            }
        }
    }
}
