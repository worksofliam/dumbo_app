**free

ctl-opt dftactgrp(*no);

dcl-pi P3759;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1300.rpgleinc'
/copy 'qrpgleref/P1476.rpgleinc'
/copy 'qrpgleref/P2889.rpgleinc'

dcl-ds theTable extname('T922') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T922 LIMIT 1;

theCharVar = 'Hello from P3759';
dsply theCharVar;
P1300();
P1476();
P2889();
return;