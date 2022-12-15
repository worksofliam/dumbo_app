**free

ctl-opt dftactgrp(*no);

dcl-pi P2394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1218.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'
/copy 'qrpgleref/P1217.rpgleinc'

dcl-ds theTable extname('T1135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1135 LIMIT 1;

theCharVar = 'Hello from P2394';
dsply theCharVar;
P1218();
P873();
P1217();
return;