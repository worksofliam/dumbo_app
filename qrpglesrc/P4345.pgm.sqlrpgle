**free

ctl-opt dftactgrp(*no);

dcl-pi P4345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3139.rpgleinc'
/copy 'qrpgleref/P4031.rpgleinc'
/copy 'qrpgleref/P1534.rpgleinc'

dcl-ds T689 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T689 FROM T689 LIMIT 1;

theCharVar = 'Hello from P4345';
dsply theCharVar;
callp localProc();
P3139();
P4031();
P1534();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4345 in the procedure';
end-proc;