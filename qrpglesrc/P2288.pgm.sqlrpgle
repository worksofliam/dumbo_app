**free

ctl-opt dftactgrp(*no);

dcl-pi P2288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P932.rpgleinc'

dcl-ds T373 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T373 FROM T373 LIMIT 1;

theCharVar = 'Hello from P2288';
dsply theCharVar;
callp localProc();
P718();
P578();
P932();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2288 in the procedure';
end-proc;