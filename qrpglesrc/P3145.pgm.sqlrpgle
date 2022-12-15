**free

ctl-opt dftactgrp(*no);

dcl-pi P3145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2108.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P2289.rpgleinc'

dcl-ds T788 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T788 FROM T788 LIMIT 1;

theCharVar = 'Hello from P3145';
dsply theCharVar;
callp localProc();
P2108();
P324();
P2289();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3145 in the procedure';
end-proc;