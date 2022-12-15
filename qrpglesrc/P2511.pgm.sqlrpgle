**free

ctl-opt dftactgrp(*no);

dcl-pi P2511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2504.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P2409.rpgleinc'

dcl-ds T412 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T412 FROM T412 LIMIT 1;

theCharVar = 'Hello from P2511';
dsply theCharVar;
callp localProc();
P2504();
P407();
P2409();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2511 in the procedure';
end-proc;