**free

ctl-opt dftactgrp(*no);

dcl-pi P3736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1213.rpgleinc'
/copy 'qrpgleref/P2363.rpgleinc'
/copy 'qrpgleref/P3701.rpgleinc'

dcl-ds T1053 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1053 FROM T1053 LIMIT 1;

theCharVar = 'Hello from P3736';
dsply theCharVar;
callp localProc();
P1213();
P2363();
P3701();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3736 in the procedure';
end-proc;