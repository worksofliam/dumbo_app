**free

ctl-opt dftactgrp(*no);

dcl-pi P32;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds T1536 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1536 FROM T1536 LIMIT 1;

theCharVar = 'Hello from P32';
dsply theCharVar;
callp localProc();
P7();
P10();
P24();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P32 in the procedure';
end-proc;