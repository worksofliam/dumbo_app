**free

ctl-opt dftactgrp(*no);

dcl-pi P1190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P344.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'

dcl-ds theTable extname('T408') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T408 LIMIT 1;

theCharVar = 'Hello from P1190';
dsply theCharVar;
P344();
P382();
P398();
return;