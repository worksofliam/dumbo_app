**free

ctl-opt dftactgrp(*no);

dcl-pi P2294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1965.rpgleinc'
/copy 'qrpgleref/P2289.rpgleinc'
/copy 'qrpgleref/P1743.rpgleinc'

dcl-ds T945 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T945 FROM T945 LIMIT 1;

theCharVar = 'Hello from P2294';
dsply theCharVar;
callp localProc();
P1965();
P2289();
P1743();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2294 in the procedure';
end-proc;