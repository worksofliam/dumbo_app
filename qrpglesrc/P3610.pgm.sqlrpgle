**free

ctl-opt dftactgrp(*no);

dcl-pi P3610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1237.rpgleinc'
/copy 'qrpgleref/P2084.rpgleinc'
/copy 'qrpgleref/P2891.rpgleinc'

dcl-ds T1689 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1689 FROM T1689 LIMIT 1;

theCharVar = 'Hello from P3610';
dsply theCharVar;
callp localProc();
P1237();
P2084();
P2891();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3610 in the procedure';
end-proc;