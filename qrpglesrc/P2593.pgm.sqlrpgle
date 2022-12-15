**free

ctl-opt dftactgrp(*no);

dcl-pi P2593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P966.rpgleinc'
/copy 'qrpgleref/P2347.rpgleinc'
/copy 'qrpgleref/P1262.rpgleinc'

dcl-ds theTable extname('T422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T422 LIMIT 1;

theCharVar = 'Hello from P2593';
dsply theCharVar;
P966();
P2347();
P1262();
return;