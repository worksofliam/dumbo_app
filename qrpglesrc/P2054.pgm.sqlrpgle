**free

ctl-opt dftactgrp(*no);

dcl-pi P2054;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P1505.rpgleinc'
/copy 'qrpgleref/P979.rpgleinc'

dcl-ds theTable extname('T1444') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1444 LIMIT 1;

theCharVar = 'Hello from P2054';
dsply theCharVar;
P514();
P1505();
P979();
return;