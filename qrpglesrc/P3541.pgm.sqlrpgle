**free

ctl-opt dftactgrp(*no);

dcl-pi P3541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1392.rpgleinc'
/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P1248.rpgleinc'

dcl-ds theTable extname('T293') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T293 LIMIT 1;

theCharVar = 'Hello from P3541';
dsply theCharVar;
P1392();
P807();
P1248();
return;