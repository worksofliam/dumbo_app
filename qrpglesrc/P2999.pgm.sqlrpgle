**free

ctl-opt dftactgrp(*no);

dcl-pi P2999;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2671.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds T1026 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1026 FROM T1026 LIMIT 1;

theCharVar = 'Hello from P2999';
dsply theCharVar;
callp localProc();
P2671();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2999 in the procedure';
end-proc;