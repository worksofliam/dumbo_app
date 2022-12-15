**free

ctl-opt dftactgrp(*no);

dcl-pi P3653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1681.rpgleinc'
/copy 'qrpgleref/P1548.rpgleinc'
/copy 'qrpgleref/P1896.rpgleinc'

dcl-ds theTable extname('T196') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T196 LIMIT 1;

theCharVar = 'Hello from P3653';
dsply theCharVar;
P1681();
P1548();
P1896();
return;