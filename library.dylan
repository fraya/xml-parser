module: dylan-user

define library xml-parser
  use common-dylan;
  use anaphora;
  //use multimap;
  use meta;
  use io;
  use system, import: { file-system };

  export xml-parser,
    xml-stream-parser,
    simple-xml,
    %productions,
    printing;
end library;

define module xml-parser
  create parse-document;

  create <document>, <element>, <node-mixin>, <attribute>, <xml>, <processing-instruction>,
    <entity-reference>, <add-parents>, <char-reference>, <comment>, <tag>,
    <char-string>, <dtd>, <internal-entity>, <external-entity>,
    text, text-setter, unfiltered-text, name, name-setter, name-with-proper-capitalization,
    root, char;

  create entity-value, attributes, attributes-setter, *dtd-paths*,
    attribute-value, attribute-value-setter,
    node-children, node-children-setter, 
    element-parent, element-parent-setter,
    collect-elements, make-element, sys-id, pub-id, sys/pub,
    internal-declarations, internal-declarations-setter,
    expansion, expansion-setter, comment, comment-setter;

  // for printing
  create <printing>, xml-name,
    *xml-depth*, *open-the-tag*, *close-the-tag*, *ampersand*, *printer-state*;

    // for iteration
  create node-iterator, prepare-document;
  create transform, transform-document, before-transform, <xform-state>;
end module xml-parser;

define module interface
  use common-dylan, exclude: { format-to-string };
  use streams;
  use format;

  use meta;
  use xml-parser, export: { <node-mixin> };

  export
    <reference>, <attributes>, <external-mixin>, *entities*,
    after-open, before-close, $hex-digit, $version-number, trim-string;
end module interface;

define module latin1-entities
  use common-dylan;
  use xml-parser;
  use interface;
  export initialize-latin1-entities;
end module latin1-entities;

define module transform
  use common-dylan, exclude: {format-to-string };
  use streams;
  use format;
  use standard-io;
  use xml-parser;
  use interface;
end module transform;

define module printing
  use common-dylan, exclude: { format-to-string };
  use streams;
  use format;
  use print;
  use anaphora;

  use xml-parser;

  use interface;
  use transform;
  
  create print-opening, print-attributes, print-closing;
end module printing;

define module collect
  use common-dylan, exclude: { format-to-string };
  use streams;
  use format;
  use anaphora;
  use xml-parser, rename: { attribute-value => value,
                           attribute-value-setter => value-setter };
  use interface;
end module collect;

define module %productions
  use common-dylan, exclude: { format-to-string };
  use latin1-entities;
  use standard-io;
  use format-out;
  use streams;
  use format;
  //use multimap;
  use anaphora;
  use file-system, import: { with-open-file, file-exists? };
  use print;

  use meta;
  use interface;
  use xml-parser;

  export scan-xml-decl, scan-name, scan-s?, scan-xml-attributes,
    scan-start-tag, scan-end-tag;
end module %productions;

define module simple-xml
  use common-dylan;
  use common-extensions;
  use streams;
  use xml-parser;
  use printing;
  
  export \with-xml,
    \with-xml-builder,
    escape-xml,
    attribute,
    elements,
    add-attribute,
    remove-attribute,
    add-element,
    remove-element,
    import-element,
    namespace,
    add-namespace,
    remove-namespace,
    replace-element-text,
    prefix,
    real-name,
    start-tag;
    
end module simple-xml;

define module xml-stream-parser
  use common-dylan;
  use common-extensions;
  use streams;
  use xml-parser;
  use %productions;

  export <xml-stream-parser>,
    stream, stream-setter,
    parse, monitor;
    
end module xml-stream-parser;
