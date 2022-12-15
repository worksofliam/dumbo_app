**free

ctl-opt dftactgrp(*no);

dcl-pi P1944;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1675.rpgleinc'
/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P1435.rpgleinc'

dcl-ds theTable extname('T625') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T625 LIMIT 1;

theCharVar = 'Hello from P1944';
dsply theCharVar;
P1675();
P291();
P1435();
return;