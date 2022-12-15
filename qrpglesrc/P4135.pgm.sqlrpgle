**free

ctl-opt dftactgrp(*no);

dcl-pi P4135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1509.rpgleinc'
/copy 'qrpgleref/P2356.rpgleinc'
/copy 'qrpgleref/P3960.rpgleinc'

dcl-ds theTable extname('T1090') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1090 LIMIT 1;

theCharVar = 'Hello from P4135';
dsply theCharVar;
P1509();
P2356();
P3960();
return;