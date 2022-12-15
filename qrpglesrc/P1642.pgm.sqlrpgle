**free

ctl-opt dftactgrp(*no);

dcl-pi P1642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P1574.rpgleinc'

dcl-ds theTable extname('T1030') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1030 LIMIT 1;

theCharVar = 'Hello from P1642';
dsply theCharVar;
P20();
P501();
P1574();
return;