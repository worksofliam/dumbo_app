**free

ctl-opt dftactgrp(*no);

dcl-pi P3621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2401.rpgleinc'
/copy 'qrpgleref/P2664.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P3621';
dsply theCharVar;
P2401();
P2664();
P54();
return;