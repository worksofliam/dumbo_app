**free

ctl-opt dftactgrp(*no);

dcl-pi P3190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2324.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P1790.rpgleinc'

dcl-ds theTable extname('T1425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1425 LIMIT 1;

theCharVar = 'Hello from P3190';
dsply theCharVar;
P2324();
P382();
P1790();
return;