**free

ctl-opt dftactgrp(*no);

dcl-pi P5133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1598.rpgleinc'
/copy 'qrpgleref/P2448.rpgleinc'
/copy 'qrpgleref/P3759.rpgleinc'

dcl-ds theTable extname('T1345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1345 LIMIT 1;

theCharVar = 'Hello from P5133';
dsply theCharVar;
P1598();
P2448();
P3759();
return;