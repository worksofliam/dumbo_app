**free

ctl-opt dftactgrp(*no);

dcl-pi P652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds T447 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T447 FROM T447 LIMIT 1;

theCharVar = 'Hello from P652';
dsply theCharVar;
callp localProc();
P260();
P159();
P439();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P652 in the procedure';
end-proc;