**free

ctl-opt dftactgrp(*no);

dcl-pi P5144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4173.rpgleinc'
/copy 'qrpgleref/P2244.rpgleinc'
/copy 'qrpgleref/P1653.rpgleinc'

dcl-ds theTable extname('T90') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T90 LIMIT 1;

theCharVar = 'Hello from P5144';
dsply theCharVar;
P4173();
P2244();
P1653();
return;