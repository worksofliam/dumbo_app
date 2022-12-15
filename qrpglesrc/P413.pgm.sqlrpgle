**free

ctl-opt dftactgrp(*no);

dcl-pi P413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds T240 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T240 FROM T240 LIMIT 1;

theCharVar = 'Hello from P413';
dsply theCharVar;
callp localProc();
P139();
P90();
P196();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P413 in the procedure';
end-proc;