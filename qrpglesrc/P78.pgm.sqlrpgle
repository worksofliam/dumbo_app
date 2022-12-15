**free

ctl-opt dftactgrp(*no);

dcl-pi P78;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds T106 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T106 FROM T106 LIMIT 1;

theCharVar = 'Hello from P78';
dsply theCharVar;
P10();
P48();
P43();
return;