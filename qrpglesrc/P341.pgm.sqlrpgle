**free

ctl-opt dftactgrp(*no);

dcl-pi P341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds T94 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T94 FROM T94 LIMIT 1;

theCharVar = 'Hello from P341';
dsply theCharVar;
callp localProc();
P332();
P133();
P138();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P341 in the procedure';
end-proc;