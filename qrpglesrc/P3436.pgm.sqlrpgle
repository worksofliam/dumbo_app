**free

ctl-opt dftactgrp(*no);

dcl-pi P3436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2611.rpgleinc'
/copy 'qrpgleref/P2821.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds theTable extname('T451') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T451 LIMIT 1;

theCharVar = 'Hello from P3436';
dsply theCharVar;
P2611();
P2821();
P573();
return;