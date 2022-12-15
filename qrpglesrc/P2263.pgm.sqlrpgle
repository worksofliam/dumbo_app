**free

ctl-opt dftactgrp(*no);

dcl-pi P2263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1463.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'
/copy 'qrpgleref/P1056.rpgleinc'

dcl-ds theTable extname('T1019') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1019 LIMIT 1;

theCharVar = 'Hello from P2263';
dsply theCharVar;
P1463();
P825();
P1056();
return;