**free

ctl-opt dftactgrp(*no);

dcl-pi P2577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1555.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'

dcl-ds T937 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T937 FROM T937 LIMIT 1;

theCharVar = 'Hello from P2577';
dsply theCharVar;
callp localProc();
P1555();
P375();
P868();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2577 in the procedure';
end-proc;