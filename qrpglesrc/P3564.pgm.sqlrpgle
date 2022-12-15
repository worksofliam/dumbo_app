**free

ctl-opt dftactgrp(*no);

dcl-pi P3564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2033.rpgleinc'
/copy 'qrpgleref/P2598.rpgleinc'
/copy 'qrpgleref/P3491.rpgleinc'

dcl-ds theTable extname('T54') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T54 LIMIT 1;

theCharVar = 'Hello from P3564';
dsply theCharVar;
callp localProc();
P2033();
P2598();
P3491();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3564 in the procedure';
end-proc;