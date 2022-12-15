**free

ctl-opt dftactgrp(*no);

dcl-pi P3837;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P2191.rpgleinc'

dcl-ds theTable extname('T308') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T308 LIMIT 1;

theCharVar = 'Hello from P3837';
dsply theCharVar;
P1710();
P170();
P2191();
return;