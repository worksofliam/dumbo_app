**free

ctl-opt dftactgrp(*no);

dcl-pi P2386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P2058.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P2386';
dsply theCharVar;
P1710();
P2058();
P331();
return;