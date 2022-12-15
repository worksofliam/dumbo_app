**free

ctl-opt dftactgrp(*no);

dcl-pi P3741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1943.rpgleinc'
/copy 'qrpgleref/P1217.rpgleinc'
/copy 'qrpgleref/P1035.rpgleinc'

dcl-ds theTable extname('T390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T390 LIMIT 1;

theCharVar = 'Hello from P3741';
dsply theCharVar;
P1943();
P1217();
P1035();
return;