**free

ctl-opt dftactgrp(*no);

dcl-pi P2968;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2710.rpgleinc'
/copy 'qrpgleref/P1826.rpgleinc'
/copy 'qrpgleref/P1982.rpgleinc'

dcl-ds theTable extname('T1078') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1078 LIMIT 1;

theCharVar = 'Hello from P2968';
dsply theCharVar;
P2710();
P1826();
P1982();
return;