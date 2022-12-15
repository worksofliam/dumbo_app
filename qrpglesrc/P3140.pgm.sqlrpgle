**free

ctl-opt dftactgrp(*no);

dcl-pi P3140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1531.rpgleinc'
/copy 'qrpgleref/P2347.rpgleinc'
/copy 'qrpgleref/P1843.rpgleinc'

dcl-ds theTable extname('T1274') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1274 LIMIT 1;

theCharVar = 'Hello from P3140';
dsply theCharVar;
P1531();
P2347();
P1843();
return;