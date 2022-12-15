**free

ctl-opt dftactgrp(*no);

dcl-pi P3478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3190.rpgleinc'
/copy 'qrpgleref/P1731.rpgleinc'
/copy 'qrpgleref/P1264.rpgleinc'

dcl-ds theTable extname('T1616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1616 LIMIT 1;

theCharVar = 'Hello from P3478';
dsply theCharVar;
P3190();
P1731();
P1264();
return;