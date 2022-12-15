**free

ctl-opt dftactgrp(*no);

dcl-pi P2572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P1693.rpgleinc'
/copy 'qrpgleref/P1775.rpgleinc'

dcl-ds theTable extname('T646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T646 LIMIT 1;

theCharVar = 'Hello from P2572';
dsply theCharVar;
P79();
P1693();
P1775();
return;