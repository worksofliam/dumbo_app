**free

ctl-opt dftactgrp(*no);

dcl-pi P106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds T1596 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1596 FROM T1596 LIMIT 1;

theCharVar = 'Hello from P106';
dsply theCharVar;
callp localProc();
P90();
P102();
P82();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P106 in the procedure';
end-proc;