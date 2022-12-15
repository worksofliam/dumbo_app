**free

ctl-opt dftactgrp(*no);

dcl-pi P4846;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P2498.rpgleinc'

dcl-ds theTable extname('T1278') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1278 LIMIT 1;

theCharVar = 'Hello from P4846';
dsply theCharVar;
P82();
P1097();
P2498();
return;