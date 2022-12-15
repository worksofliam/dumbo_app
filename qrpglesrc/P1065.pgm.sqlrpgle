**free

ctl-opt dftactgrp(*no);

dcl-pi P1065;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P1047.rpgleinc'

dcl-ds T405 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T405 FROM T405 LIMIT 1;

theCharVar = 'Hello from P1065';
dsply theCharVar;
callp localProc();
P736();
P439();
P1047();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1065 in the procedure';
end-proc;