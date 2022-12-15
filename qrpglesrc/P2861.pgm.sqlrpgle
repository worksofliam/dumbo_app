**free

ctl-opt dftactgrp(*no);

dcl-pi P2861;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P409.rpgleinc'
/copy 'qrpgleref/P1302.rpgleinc'
/copy 'qrpgleref/P1568.rpgleinc'

dcl-ds T361 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T361 FROM T361 LIMIT 1;

theCharVar = 'Hello from P2861';
dsply theCharVar;
callp localProc();
P409();
P1302();
P1568();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2861 in the procedure';
end-proc;