**free

ctl-opt dftactgrp(*no);

dcl-pi P4250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1012.rpgleinc'
/copy 'qrpgleref/P1455.rpgleinc'
/copy 'qrpgleref/P2838.rpgleinc'

dcl-ds theTable extname('T1663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1663 LIMIT 1;

theCharVar = 'Hello from P4250';
dsply theCharVar;
P1012();
P1455();
P2838();
return;