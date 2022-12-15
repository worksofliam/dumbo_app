**free

ctl-opt dftactgrp(*no);

dcl-pi P2895;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1237.rpgleinc'
/copy 'qrpgleref/P2285.rpgleinc'
/copy 'qrpgleref/P2595.rpgleinc'

dcl-ds T315 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T315 FROM T315 LIMIT 1;

theCharVar = 'Hello from P2895';
dsply theCharVar;
callp localProc();
P1237();
P2285();
P2595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2895 in the procedure';
end-proc;