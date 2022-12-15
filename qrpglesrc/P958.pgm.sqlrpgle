**free

ctl-opt dftactgrp(*no);

dcl-pi P958;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds T599 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T599 FROM T599 LIMIT 1;

theCharVar = 'Hello from P958';
dsply theCharVar;
callp localProc();
P595();
P935();
P295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P958 in the procedure';
end-proc;