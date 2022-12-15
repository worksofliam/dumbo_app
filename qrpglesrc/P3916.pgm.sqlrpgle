**free

ctl-opt dftactgrp(*no);

dcl-pi P3916;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1836.rpgleinc'
/copy 'qrpgleref/P1860.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'

dcl-ds theTable extname('T1606') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1606 LIMIT 1;

theCharVar = 'Hello from P3916';
dsply theCharVar;
P1836();
P1860();
P704();
return;