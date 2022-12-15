**free

ctl-opt dftactgrp(*no);

dcl-pi P162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds T398 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T398 FROM T398 LIMIT 1;

theCharVar = 'Hello from P162';
dsply theCharVar;
callp localProc();
P123();
P76();
P156();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P162 in the procedure';
end-proc;