**free

ctl-opt dftactgrp(*no);

dcl-pi P1018;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P898.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds T892 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T892 FROM T892 LIMIT 1;

theCharVar = 'Hello from P1018';
dsply theCharVar;
P898();
P192();
P729();
return;