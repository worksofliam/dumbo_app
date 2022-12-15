**free

ctl-opt dftactgrp(*no);

dcl-pi P5593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4579.rpgleinc'
/copy 'qrpgleref/P4650.rpgleinc'
/copy 'qrpgleref/P3182.rpgleinc'

dcl-ds T1418 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1418 FROM T1418 LIMIT 1;

theCharVar = 'Hello from P5593';
dsply theCharVar;
callp localProc();
P4579();
P4650();
P3182();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5593 in the procedure';
end-proc;