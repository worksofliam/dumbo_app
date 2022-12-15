**free

ctl-opt dftactgrp(*no);

dcl-pi P5505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2319.rpgleinc'
/copy 'qrpgleref/P4175.rpgleinc'
/copy 'qrpgleref/P2565.rpgleinc'

dcl-ds theTable extname('T1284') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1284 LIMIT 1;

theCharVar = 'Hello from P5505';
dsply theCharVar;
P2319();
P4175();
P2565();
return;