**free

ctl-opt dftactgrp(*no);

dcl-pi P1855;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1243.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P1705.rpgleinc'

dcl-ds theTable extname('T5') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T5 LIMIT 1;

theCharVar = 'Hello from P1855';
dsply theCharVar;
P1243();
P704();
P1705();
return;