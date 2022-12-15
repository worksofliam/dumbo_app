**free

ctl-opt dftactgrp(*no);

dcl-pi P398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds T133 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T133 FROM T133 LIMIT 1;

theCharVar = 'Hello from P398';
dsply theCharVar;
callp localProc();
P149();
P318();
P294();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P398 in the procedure';
end-proc;