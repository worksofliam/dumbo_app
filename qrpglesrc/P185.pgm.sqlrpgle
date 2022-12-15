**free

ctl-opt dftactgrp(*no);

dcl-pi P185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds theTable extname('T1133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1133 LIMIT 1;

theCharVar = 'Hello from P185';
dsply theCharVar;
P149();
P92();
return;