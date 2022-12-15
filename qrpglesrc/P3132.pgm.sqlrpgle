**free

ctl-opt dftactgrp(*no);

dcl-pi P3132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2466.rpgleinc'
/copy 'qrpgleref/P2387.rpgleinc'
/copy 'qrpgleref/P2262.rpgleinc'

dcl-ds theTable extname('T1409') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1409 LIMIT 1;

theCharVar = 'Hello from P3132';
dsply theCharVar;
P2466();
P2387();
P2262();
return;