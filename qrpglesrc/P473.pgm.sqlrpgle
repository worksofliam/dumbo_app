**free

ctl-opt dftactgrp(*no);

dcl-pi P473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds T246 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T246 FROM T246 LIMIT 1;

theCharVar = 'Hello from P473';
dsply theCharVar;
callp localProc();
P224();
P84();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P473 in the procedure';
end-proc;