**free

ctl-opt dftactgrp(*no);

dcl-pi P2922;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P1293.rpgleinc'
/copy 'qrpgleref/P2462.rpgleinc'

dcl-ds theTable extname('T406') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T406 LIMIT 1;

theCharVar = 'Hello from P2922';
dsply theCharVar;
P74();
P1293();
P2462();
return;