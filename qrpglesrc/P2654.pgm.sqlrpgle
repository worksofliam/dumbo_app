**free

ctl-opt dftactgrp(*no);

dcl-pi P2654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P691.rpgleinc'
/copy 'qrpgleref/P2452.rpgleinc'
/copy 'qrpgleref/P2449.rpgleinc'

dcl-ds T11 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T11 FROM T11 LIMIT 1;

theCharVar = 'Hello from P2654';
dsply theCharVar;
callp localProc();
P691();
P2452();
P2449();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2654 in the procedure';
end-proc;