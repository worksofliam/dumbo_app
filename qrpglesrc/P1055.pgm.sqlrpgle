**free

ctl-opt dftactgrp(*no);

dcl-pi P1055;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds T1425 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1425 FROM T1425 LIMIT 1;

theCharVar = 'Hello from P1055';
dsply theCharVar;
callp localProc();
P648();
P439();
P69();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1055 in the procedure';
end-proc;