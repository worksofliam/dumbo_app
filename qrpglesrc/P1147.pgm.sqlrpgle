**free

ctl-opt dftactgrp(*no);

dcl-pi P1147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1130.rpgleinc'
/copy 'qrpgleref/P981.rpgleinc'
/copy 'qrpgleref/P630.rpgleinc'

dcl-ds theTable extname('T1577') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1577 LIMIT 1;

theCharVar = 'Hello from P1147';
dsply theCharVar;
P1130();
P981();
P630();
return;