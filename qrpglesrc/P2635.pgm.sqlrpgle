**free

ctl-opt dftactgrp(*no);

dcl-pi P2635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P905.rpgleinc'
/copy 'qrpgleref/P1881.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'

dcl-ds T472 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T472 FROM T472 LIMIT 1;

theCharVar = 'Hello from P2635';
dsply theCharVar;
callp localProc();
P905();
P1881();
P949();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2635 in the procedure';
end-proc;