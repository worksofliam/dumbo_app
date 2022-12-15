**free

ctl-opt dftactgrp(*no);

dcl-pi P4733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2361.rpgleinc'
/copy 'qrpgleref/P4083.rpgleinc'
/copy 'qrpgleref/P4523.rpgleinc'

dcl-ds T1431 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1431 FROM T1431 LIMIT 1;

theCharVar = 'Hello from P4733';
dsply theCharVar;
callp localProc();
P2361();
P4083();
P4523();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4733 in the procedure';
end-proc;