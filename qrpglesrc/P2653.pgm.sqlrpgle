**free

ctl-opt dftactgrp(*no);

dcl-pi P2653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1530.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P562.rpgleinc'

dcl-ds T1594 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1594 FROM T1594 LIMIT 1;

theCharVar = 'Hello from P2653';
dsply theCharVar;
callp localProc();
P1530();
P537();
P562();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2653 in the procedure';
end-proc;