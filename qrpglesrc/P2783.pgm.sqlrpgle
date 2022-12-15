**free

ctl-opt dftactgrp(*no);

dcl-pi P2783;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1419.rpgleinc'
/copy 'qrpgleref/P885.rpgleinc'
/copy 'qrpgleref/P2097.rpgleinc'

dcl-ds T1676 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1676 FROM T1676 LIMIT 1;

theCharVar = 'Hello from P2783';
dsply theCharVar;
callp localProc();
P1419();
P885();
P2097();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2783 in the procedure';
end-proc;