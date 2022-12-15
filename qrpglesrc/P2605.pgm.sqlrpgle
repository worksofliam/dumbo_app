**free

ctl-opt dftactgrp(*no);

dcl-pi P2605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2437.rpgleinc'
/copy 'qrpgleref/P1190.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'

dcl-ds theTable extname('T1345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1345 LIMIT 1;

theCharVar = 'Hello from P2605';
dsply theCharVar;
P2437();
P1190();
P333();
return;