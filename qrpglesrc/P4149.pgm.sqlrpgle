**free

ctl-opt dftactgrp(*no);

dcl-pi P4149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1318.rpgleinc'
/copy 'qrpgleref/P1112.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'

dcl-ds theTable extname('T1318') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1318 LIMIT 1;

theCharVar = 'Hello from P4149';
dsply theCharVar;
P1318();
P1112();
P108();
return;