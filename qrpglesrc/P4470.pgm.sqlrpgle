**free

ctl-opt dftactgrp(*no);

dcl-pi P4470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2562.rpgleinc'
/copy 'qrpgleref/P2568.rpgleinc'
/copy 'qrpgleref/P1463.rpgleinc'

dcl-ds theTable extname('T1545') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1545 LIMIT 1;

theCharVar = 'Hello from P4470';
dsply theCharVar;
callp localProc();
P2562();
P2568();
P1463();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4470 in the procedure';
end-proc;