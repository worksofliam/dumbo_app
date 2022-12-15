**free

ctl-opt dftactgrp(*no);

dcl-pi P1674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1282.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds T1307 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1307 FROM T1307 LIMIT 1;

theCharVar = 'Hello from P1674';
dsply theCharVar;
callp localProc();
P1282();
P476();
P42();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1674 in the procedure';
end-proc;