**free

ctl-opt dftactgrp(*no);

dcl-pi P531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'

dcl-ds T168 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T168 FROM T168 LIMIT 1;

theCharVar = 'Hello from P531';
dsply theCharVar;
P252();
P427();
P378();
return;