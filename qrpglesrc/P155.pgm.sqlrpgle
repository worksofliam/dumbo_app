**free

ctl-opt dftactgrp(*no);

dcl-pi P155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds T988 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T988 FROM T988 LIMIT 1;

theCharVar = 'Hello from P155';
dsply theCharVar;
callp localProc();
P133();
P27();
P146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P155 in the procedure';
end-proc;