**free

ctl-opt dftactgrp(*no);

dcl-pi P680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P555.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P517.rpgleinc'

dcl-ds theTable extname('T1028') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1028 LIMIT 1;

theCharVar = 'Hello from P680';
dsply theCharVar;
P555();
P118();
P517();
return;