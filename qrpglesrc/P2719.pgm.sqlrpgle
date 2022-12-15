**free

ctl-opt dftactgrp(*no);

dcl-pi P2719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1481.rpgleinc'
/copy 'qrpgleref/P1713.rpgleinc'
/copy 'qrpgleref/P1778.rpgleinc'

dcl-ds theTable extname('T1084') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1084 LIMIT 1;

theCharVar = 'Hello from P2719';
dsply theCharVar;
P1481();
P1713();
P1778();
return;