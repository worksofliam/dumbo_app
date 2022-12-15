**free

ctl-opt dftactgrp(*no);

dcl-pi P1012;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T371 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T371 FROM T371 LIMIT 1;

theCharVar = 'Hello from P1012';
dsply theCharVar;
callp localProc();
P935();
P870();
P49();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1012 in the procedure';
end-proc;