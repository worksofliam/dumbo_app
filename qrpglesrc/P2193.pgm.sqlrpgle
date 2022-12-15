**free

ctl-opt dftactgrp(*no);

dcl-pi P2193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'

dcl-ds T294 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T294 FROM T294 LIMIT 1;

theCharVar = 'Hello from P2193';
dsply theCharVar;
callp localProc();
P713();
P839();
P978();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2193 in the procedure';
end-proc;