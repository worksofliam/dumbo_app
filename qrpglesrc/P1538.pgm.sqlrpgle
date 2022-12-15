**free

ctl-opt dftactgrp(*no);

dcl-pi P1538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P768.rpgleinc'

dcl-ds theTable extname('T1730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1730 LIMIT 1;

theCharVar = 'Hello from P1538';
dsply theCharVar;
P493();
P808();
P768();
return;