**free

ctl-opt dftactgrp(*no);

dcl-pi P2626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P835.rpgleinc'
/copy 'qrpgleref/P846.rpgleinc'

dcl-ds theTable extname('T609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T609 LIMIT 1;

theCharVar = 'Hello from P2626';
dsply theCharVar;
P1397();
P835();
P846();
return;