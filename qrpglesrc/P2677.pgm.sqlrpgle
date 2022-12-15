**free

ctl-opt dftactgrp(*no);

dcl-pi P2677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'

dcl-ds T1440 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1440 FROM T1440 LIMIT 1;

theCharVar = 'Hello from P2677';
dsply theCharVar;
callp localProc();
P875();
P703();
P227();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2677 in the procedure';
end-proc;