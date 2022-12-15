**free

ctl-opt dftactgrp(*no);

dcl-pi P2784;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1754.rpgleinc'
/copy 'qrpgleref/P2146.rpgleinc'
/copy 'qrpgleref/P282.rpgleinc'

dcl-ds T505 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T505 FROM T505 LIMIT 1;

theCharVar = 'Hello from P2784';
dsply theCharVar;
callp localProc();
P1754();
P2146();
P282();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2784 in the procedure';
end-proc;