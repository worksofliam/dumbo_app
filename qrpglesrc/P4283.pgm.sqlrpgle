**free

ctl-opt dftactgrp(*no);

dcl-pi P4283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P2841.rpgleinc'
/copy 'qrpgleref/P1206.rpgleinc'

dcl-ds theTable extname('T1079') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1079 LIMIT 1;

theCharVar = 'Hello from P4283';
dsply theCharVar;
callp localProc();
P326();
P2841();
P1206();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4283 in the procedure';
end-proc;