******************
xml-parser library
******************

.. current-library:: xml-parser


.. toctree::
   :maxdepth: 2
   :hidden:

.. note:: For now the ``xml-parser`` library is mostly To Be Documented (TBD). This
          documentation is currently little more than the auto-generated docs created by
          Open Dylan.

The ``xml-parser`` library exports these four modules:

* :mod:`simple-xml`
* :mod:`xml-parser`
* :mod:`printing`
* :mod:`xml-stream-parser`


simple-xml Module
=================

.. current-module:: simple-xml

.. module:: simple-xml

.. generic-function:: add-attribute

   :signature: add-attribute (element attribute) => (res)

   :parameter element: An instance of :class:`<element>`.
   :parameter attribute: An instance of :class:`<attribute>`.
   :value res: An instance of :class:`<element>`.

.. generic-function:: add-element
   :open:

   :signature: add-element (element node) => (#rest results)

   :parameter element: An instance of :class:`<element>`.
   :parameter node: An instance of :class:`<xml>`.
   :value #rest results: An instance of :class:`<object>`.

.. method:: add-element
   :specializer: <element>, <xml>

.. generic-function:: add-namespace

   :signature: add-namespace (element ns) => (res)

   :parameter element: An instance of :class:`<element>`.
   :parameter ns: An instance of :class:`<string>`.
   :value res: An instance of :class:`<element>`.

.. generic-function:: attribute

   :signature: attribute (element attribute-name) => (res)

   :parameter element: An instance of :class:`<element>`.
   :parameter attribute-name: An instance of :class:`<object>`.
   :value res: An instance of ``false-or(<attribute>)``.

.. generic-function:: elements
   :open:

   :signature: elements (element name) => (res)

   :parameter element: An instance of :class:`<element>`.
   :parameter name: An instance of :class:`<object>`.
   :value res: An instance of :class:`<sequence>`.

.. method:: elements
   :specializer: <element>, <object>

.. generic-function:: escape-xml

   :signature: escape-xml (symbol) => (#rest results)

   :parameter symbol: An instance of :class:`<object>`.
   :value #rest results: An instance of :class:`<object>`.

.. method:: escape-xml
   :specializer: <symbol>

.. method:: escape-xml
   :specializer: <string>

.. generic-function:: import-element
   :open:

   :signature: import-element (element node) => (#rest results)

   :parameter element: An instance of :class:`<element>`.
   :parameter node: An instance of :class:`<element>`.
   :value #rest results: An instance of :class:`<object>`.

.. method:: import-element
   :specializer: <element>, <element>

.. generic-function:: namespace

   :signature: namespace (element) => (xmlns)

   :parameter element: An instance of :class:`<element>`.
   :value xmlns: An instance of ``false-or(<string>)``.

.. function:: parents

   :signature: parents (element) => (element-parents)

   :parameter element: An instance of :class:`<element>`.
   :value element-parents: An instance of :class:`<sequence>`.

.. generic-function:: prefix

   :signature: prefix (object) => (res)

   :parameter object: An instance of :class:`<object>`.
   :value res: An instance of :class:`<string>`.

.. method:: prefix
   :specializer: <element>

.. method:: prefix
   :specializer: type-union(<string>, <symbol>)

.. generic-function:: prefix-setter

   :signature: prefix-setter (prefix element) => (#rest results)

   :parameter prefix: An instance of :class:`<string>`.
   :parameter element: An instance of :class:`<element>`.
   :value #rest results: An instance of :class:`<object>`.

.. generic-function:: real-name

   :signature: real-name (object) => (res)

   :parameter object: An instance of :class:`<object>`.
   :value res: An instance of :class:`<string>`.

.. method:: real-name
   :specializer: <element>

.. method:: real-name
   :specializer: type-union(<string>, <symbol>)

.. generic-function:: remove-attribute

   :signature: remove-attribute (element attribute) => (#rest results)

   :parameter element: An instance of :class:`<element>`.
   :parameter attribute: An instance of :class:`<object>`.
   :value #rest results: An instance of :class:`<object>`.

.. generic-function:: remove-element

   :signature: remove-element (element node-name #key count) => (res)

   :parameter element: An instance of :class:`<element>`.
   :parameter node-name: An instance of :class:`<object>`.
   :parameter #key count: An instance of :class:`<object>`.
   :value res: An instance of :class:`<element>`.

.. generic-function:: remove-namespace

   :signature: remove-namespace (element) => (res)

   :parameter element: An instance of :class:`<element>`.
   :value res: An instance of :class:`<element>`.

.. generic-function:: replace-element-text

   :signature: replace-element-text (element node text) => (#rest results)

   :parameter element: An instance of :class:`<element>`.
   :parameter node: An instance of :class:`<string>`.
   :parameter text: An instance of :class:`<string>`.
   :value #rest results: An instance of :class:`<object>`.

.. generic-function:: start-tag

   :signature: start-tag (element) => (tag)

   :parameter element: An instance of :class:`<element>`.
   :value tag: An instance of :class:`<string>`.

.. macro:: with-xml

.. macro:: with-xml-builder


xml-parser Module
=================

.. current-module:: xml-parser

.. module:: xml-parser

.. variable:: *dtd-paths*
   :thread:

.. class:: <add-parents>

   :superclasses: :class:`<xform-state>`


.. class:: <attribute>

   :superclasses: :class:`<xml>`

   :keyword value: An instance of :drm:`<string>`.

.. class:: <char-reference>

   :superclasses: :class:`<reference>`

   :keyword required char: An instance of :drm:`<character>`.

.. class:: <char-string>

   :superclasses: :class:`<xml>`

   :keyword required text: An instance of :drm:`<string>`.

.. class:: <comment>

   :superclasses: :class:`<tag>`

   :keyword comment: An instance of :drm:`<string>`.

.. class:: <document>

   :superclasses: :class:`<xml>`, :class:`<node-mixin>`


.. class:: <dtd>

   :superclasses: :class:`<tag>`, :class:`<external-mixin>`

   :keyword internal: An instance of :drm:`<sequence>`.

.. class:: <element>
   :open:

   :superclasses: :class:`<attributes>`, :class:`<node-mixin>`

   :keyword parent: An instance of ``false-or(<node-mixin>)``.

.. class:: <entity-reference>

   :superclasses: :class:`<reference>`


.. class:: <external-entity>

   :superclasses: :class:`<entity>`, :class:`<external-mixin>`


.. class:: <internal-entity>

   :superclasses: :class:`<entity>`

   :keyword expands-to: An instance of :drm:`<sequence>`.

.. class:: <node-mixin>
   :abstract:

   :superclasses: :drm:`<object>`

   :keyword children: An instance of :drm:`<object>`.

.. class:: <printing>
   :open:

   :superclasses: :class:`<xform-state>`

   :keyword required stream: An instance of ``<stream>``.

.. class:: <processing-instruction>

   :superclasses: :class:`<attributes>`


.. class:: <tag>
   :abstract:

   :superclasses: :class:`<xml>`


.. class:: <xform-state>
   :open:
   :abstract:

   :superclasses: :drm:`<object>`


.. class:: <xml-error>

   :superclasses: :drm:`<format-string-condition>`, :drm:`<error>`


.. class:: <xml-parse-error>

   :superclasses: :class:`<xml-error>`


.. class:: <xml>
   :abstract:

   :superclasses: :drm:`<object>`

   :keyword required name: An instance of :drm:`<string>`.

.. generic-function:: attribute-value

   :signature: attribute-value (object) => (value)

   :parameter object: An instance of ``{<attribute> in xml-parser}``.
   :value value: An instance of :drm:`<string>`.

.. generic-function:: attribute-value-setter

   :signature: attribute-value-setter (value object) => (value)

   :parameter value: An instance of :drm:`<string>`.
   :parameter object: An instance of ``{<attribute> in xml-parser}``.
   :value value: An instance of :drm:`<string>`.

.. generic-function:: attributes

   :signature: attributes (object) => (value)

   :parameter object: An instance of ``{<attributes> in interface}``.
   :value value: An instance of :drm:`<vector>`.

.. generic-function:: attributes-setter

   :signature: attributes-setter (value object) => (value)

   :parameter value: An instance of :drm:`<vector>`.
   :parameter object: An instance of ``{<attributes> in interface}``.
   :value value: An instance of :drm:`<vector>`.

.. generic-function:: char

   :signature: char (object) => (value)

   :parameter object: An instance of ``{<char-reference> in xml-parser}``.
   :value value: An instance of :drm:`<character>`.

.. generic-function:: comment

   :signature: comment (object) => (value)

   :parameter object: An instance of ``{<comment> in xml-parser}``.
   :value value: An instance of :drm:`<string>`.

.. generic-function:: comment-setter

   :signature: comment-setter (value object) => (value)

   :parameter value: An instance of :drm:`<string>`.
   :parameter object: An instance of ``{<comment> in xml-parser}``.
   :value value: An instance of :drm:`<string>`.

.. generic-function:: element-parent

   :signature: element-parent (object) => (value)

   :parameter object: An instance of ``{<element> in xml-parser}``.
   :value value: An instance of ``false-or(<node-mixin>)``.

.. generic-function:: element-parent-setter

   :signature: element-parent-setter (value object) => (value)

   :parameter value: An instance of ``false-or(<node-mixin>)``.
   :parameter object: An instance of ``{<element> in xml-parser}``.
   :value value: An instance of ``false-or(<node-mixin>)``.

.. generic-function:: entity-value

   :signature: entity-value (ent) => (val)

   :parameter ent: An instance of :class:`<entity-reference>`.
   :value val: An instance of :drm:`<sequence>`.

.. generic-function:: escape-xml

   :signature: escape-xml (symbol) => (#rest results)

   :parameter symbol: An instance of :drm:`<object>`.
   :value #rest results: An instance of :drm:`<object>`.

.. method:: escape-xml
   :specializer: <symbol>

.. method:: escape-xml
   :specializer: <string>

.. generic-function:: expansion

   :signature: expansion (object) => (value)

   :parameter object: An instance of ``{<internal-entity> in xml-parser}``.
   :value value: An instance of :drm:`<sequence>`.

.. generic-function:: expansion-setter

   :signature: expansion-setter (value object) => (value)

   :parameter value: An instance of :drm:`<sequence>`.
   :parameter object: An instance of ``{<internal-entity> in xml-parser}``.
   :value value: An instance of :drm:`<sequence>`.

.. generic-function:: internal-declarations

   :signature: internal-declarations (object) => (value)

   :parameter object: An instance of ``{<dtd> in xml-parser}``.
   :value value: An instance of :drm:`<sequence>`.

.. generic-function:: internal-declarations-setter

   :signature: internal-declarations-setter (value object) => (value)

   :parameter value: An instance of :drm:`<sequence>`.
   :parameter object: An instance of ``{<dtd> in xml-parser}``.
   :value value: An instance of :drm:`<sequence>`.

.. generic-function:: make-element
   :open:

   :signature: make-element (kids name attribs modify-elements-when-parsing?) => (elt)

   :parameter kids: An instance of :drm:`<sequence>`.
   :parameter name: An instance of :drm:`<symbol>`.
   :parameter attribs: An instance of :drm:`<sequence>`.
   :parameter modify-elements-when-parsing?: An instance of :drm:`<boolean>`.
   :value elt: An instance of :class:`<element>`.

.. method:: make-element
   :specializer: <sequence>, <symbol>, <sequence>, <boolean>

.. generic-function:: name

   :signature: name (object) => (#rest results)

   :parameter object: An instance of :drm:`<object>`.
   :value #rest results: An instance of :drm:`<object>`.

.. method:: name
   :specializer: <xml>

.. method:: name
   :specializer: <document>

.. generic-function:: name-setter

   :signature: name-setter (new-value object) => (#rest results)

   :parameter new-value: An instance of :drm:`<object>`.
   :parameter object: An instance of :drm:`<object>`.
   :value #rest results: An instance of :drm:`<object>`.

.. method:: name-setter
   :specializer: <object>, <xml>

.. method:: name-setter
   :specializer: <object>, <document>

.. generic-function:: name-with-proper-capitalization

   :signature: name-with-proper-capitalization (object) => (value)

   :parameter object: An instance of ``{<xml> in xml-parser}``.
   :value value: An instance of :drm:`<string>`.

.. generic-function:: node-children

   :signature: node-children (object) => (value)

   :parameter object: An instance of ``{<node-mixin> in xml-parser}``.
   :value value: An instance of :drm:`<object>`.

.. generic-function:: node-children-setter

   :signature: node-children-setter (value object) => (value)

   :parameter value: An instance of :drm:`<object>`.
   :parameter object: An instance of ``{<node-mixin> in xml-parser}``.
   :value value: An instance of :drm:`<object>`.

.. function:: parse-document

   :signature: parse-document (doc #key start end substitute-entities? modify-elements-when-parsing? print-warnings? dtd-paths ignore-instructions?) => (stripped-tree)

   :parameter doc: An instance of :drm:`<string>`.
   :parameter #key start: An instance of :drm:`<object>`.
   :parameter #key end: An instance of :drm:`<object>`.
   :parameter #key substitute-entities?: An instance of :drm:`<object>`.
   :parameter #key modify-elements-when-parsing?: An instance of :drm:`<object>`.
   :parameter #key print-warnings?: An instance of :drm:`<object>`.
   :parameter #key dtd-paths: An instance of :drm:`<object>`.
   :parameter #key ignore-instructions?: An instance of :drm:`<object>`.
   :value stripped-tree: An instance of ``false-or(<document>)``.

.. generic-function:: pub-id

   :signature: pub-id (object) => (value)

   :parameter object: An instance of ``{<external-mixin> in interface}``.
   :value value: An instance of ``false-or(<string>)``.

.. generic-function:: root

   :signature: root (doc) => (elt)

   :parameter doc: An instance of :class:`<document>`.
   :value elt: An instance of :class:`<element>`.

.. generic-function:: sys-id

   :signature: sys-id (object) => (value)

   :parameter object: An instance of ``{<external-mixin> in interface}``.
   :value value: An instance of ``false-or(<string>)``.

.. generic-function:: sys/pub

   :signature: sys/pub (object) => (value)

   :parameter object: An instance of ``{<external-mixin> in interface}``.
   :value value: An instance of ``one-of(#"system", #"public", #f)``.

.. generic-function:: text

   :signature: text (object) => (#rest results)

   :parameter object: An instance of :drm:`<object>`.
   :value #rest results: An instance of :drm:`<object>`.

.. method:: text
   :specializer: {<char-string> in xml-parser}

.. method:: text
   :specializer: <element>

.. generic-function:: text-setter

   :signature: text-setter (txt elt) => (s)

   :parameter txt: An instance of :drm:`<string>`.
   :parameter elt: An instance of :class:`<element>`.
   :value s: An instance of :drm:`<string>`.

.. generic-function:: transform
   :open:

   :signature: transform (elt state) => (#rest results)

   :parameter elt: An instance of :class:`<xml>`.
   :parameter state: An instance of :class:`<xform-state>`.
   :value #rest results: An instance of :drm:`<object>`.

.. method:: transform
   :specializer: <document>, <xform-state>

.. method:: transform
   :specializer: <element>, <xform-state>

.. method:: transform
   :specializer: <tag>, <xform-state>

.. method:: transform
   :specializer: <char-string>, <xform-state>

.. method:: transform
   :specializer: <reference>, <xform-state>

.. method:: transform
   :specializer: <tag>, <printing>

.. method:: transform
   :specializer: <element>, <printing>

.. method:: transform
   :specializer: type-union(<processing-instruction>, <dtd>), <printing>

.. method:: transform
   :specializer: <attribute>, <printing>

.. method:: transform
   :specializer: <char-string>, <printing>

.. method:: transform
   :specializer: <reference>, <printing>

.. method:: transform
   :specializer: <document>, <add-parents>

.. method:: transform
   :specializer: <element>, <add-parents>

.. generic-function:: unfiltered-text

   :signature: unfiltered-text (elt) => (s)

   :parameter elt: An instance of :class:`<element>`.
   :value s: An instance of :drm:`<string>`.

.. generic-function:: xml-name

   :signature: xml-name (xml) => (s)

   :parameter xml: An instance of :class:`<xml>`.
   :value s: An instance of :drm:`<string>`.

.. method:: xml-name
   :specializer: <xml>

.. method:: xml-name
   :specializer: <reference>


printing Module
===============

.. current-module:: printing

.. module:: printing

.. function:: print-attributes

   :signature: print-attributes (attribs state) => ()

   :parameter attribs: An instance of :class:`<sequence>`.
   :parameter state: An instance of :class:`<printing>`.

.. function:: print-closing

   :signature: print-closing (t stream) => (#rest results)

   :parameter t: An instance of :class:`<tag>`.
   :parameter stream: An instance of :class:`<stream>`.
   :value #rest results: An instance of :class:`<object>`.

.. function:: print-opening

   :signature: print-opening (t stream) => (#rest results)

   :parameter t: An instance of :class:`<tag>`.
   :parameter stream: An instance of :class:`<stream>`.
   :value #rest results: An instance of :class:`<object>`.


xml-stream-parser Module
========================

.. current-module:: xml-stream-parser

.. module:: xml-stream-parser

.. class:: <xml-stream-parser>

   :superclasses: :class:`<object>`

   :keyword required stream: An instance of :class:`<stream>`.

.. generic-function:: monitor

   :signature: monitor (parser event handler-function) => (#rest results)

   :parameter parser: An instance of :class:`<xml-stream-parser>`.
   :parameter event: An instance of ``one-of(#"start-element", #"end-element", #"characters")``.
   :parameter handler-function: An instance of :class:`<function>`.
   :value #rest results: An instance of :class:`<object>`.

.. generic-function:: parse

   :signature: parse (parser) => (#rest results)

   :parameter parser: An instance of :class:`<xml-stream-parser>`.
   :value #rest results: An instance of :class:`<object>`.

.. generic-function:: stream

   :signature: stream (object) => (value)

   :parameter object: An instance of ``{<xml-stream-parser> in xml-stream-parser}``.
   :value value: An instance of :class:`<stream>`.

.. generic-function:: stream-setter

   :signature: stream-setter (value object) => (value)

   :parameter value: An instance of :class:`<stream>`.
   :parameter object: An instance of ``{<xml-stream-parser> in xml-stream-parser}``.
   :value value: An instance of :class:`<stream>`.
