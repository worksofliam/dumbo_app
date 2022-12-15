**free

ctl-opt dftactgrp(*no);

dcl-pi P2493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1530.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P1163.rpgleinc'

dcl-ds theTable extname('T1495') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1495 LIMIT 1;

theCharVar = 'Hello from P2493';
dsply theCharVar;
P1530();
P809();
P1163();
return;