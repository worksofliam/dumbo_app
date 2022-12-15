**free

ctl-opt dftactgrp(*no);

dcl-pi P3695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2598.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P3693.rpgleinc'

dcl-ds T151 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T151 FROM T151 LIMIT 1;

theCharVar = 'Hello from P3695';
dsply theCharVar;
callp localProc();
P2598();
P522();
P3693();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3695 in the procedure';
end-proc;