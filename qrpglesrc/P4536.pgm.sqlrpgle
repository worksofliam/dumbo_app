**free

ctl-opt dftactgrp(*no);

dcl-pi P4536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3425.rpgleinc'
/copy 'qrpgleref/P3523.rpgleinc'
/copy 'qrpgleref/P4176.rpgleinc'

dcl-ds T953 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T953 FROM T953 LIMIT 1;

theCharVar = 'Hello from P4536';
dsply theCharVar;
callp localProc();
P3425();
P3523();
P4176();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4536 in the procedure';
end-proc;