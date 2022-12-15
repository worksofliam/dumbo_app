**free

ctl-opt dftactgrp(*no);

dcl-pi P765;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds T1126 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1126 FROM T1126 LIMIT 1;

theCharVar = 'Hello from P765';
dsply theCharVar;
callp localProc();
P556();
P65();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P765 in the procedure';
end-proc;