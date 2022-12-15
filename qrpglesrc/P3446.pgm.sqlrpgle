**free

ctl-opt dftactgrp(*no);

dcl-pi P3446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1927.rpgleinc'
/copy 'qrpgleref/P1979.rpgleinc'
/copy 'qrpgleref/P3410.rpgleinc'

dcl-ds theTable extname('T348') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T348 LIMIT 1;

theCharVar = 'Hello from P3446';
dsply theCharVar;
P1927();
P1979();
P3410();
return;