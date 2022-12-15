**free

ctl-opt dftactgrp(*no);

dcl-pi P2471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1816.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P1154.rpgleinc'

dcl-ds theTable extname('T318') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T318 LIMIT 1;

theCharVar = 'Hello from P2471';
dsply theCharVar;
P1816();
P451();
P1154();
return;