**free

ctl-opt dftactgrp(*no);

dcl-pi P978;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P775.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds T362 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T362 FROM T362 LIMIT 1;

theCharVar = 'Hello from P978';
dsply theCharVar;
callp localProc();
P248();
P775();
P533();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P978 in the procedure';
end-proc;