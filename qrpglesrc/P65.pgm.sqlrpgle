**free

ctl-opt dftactgrp(*no);

dcl-pi P65;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T1109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1109 LIMIT 1;

theCharVar = 'Hello from P65';
dsply theCharVar;
P20();
P1();
P11();
return;