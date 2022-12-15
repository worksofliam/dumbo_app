**free

ctl-opt dftactgrp(*no);

dcl-pi P3475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2840.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P1759.rpgleinc'

dcl-ds theTable extname('T1091') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1091 LIMIT 1;

theCharVar = 'Hello from P3475';
dsply theCharVar;
P2840();
P154();
P1759();
return;