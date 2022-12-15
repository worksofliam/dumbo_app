**free

ctl-opt dftactgrp(*no);

dcl-pi P2928;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1101.rpgleinc'
/copy 'qrpgleref/P2917.rpgleinc'
/copy 'qrpgleref/P2892.rpgleinc'

dcl-ds T1694 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1694 FROM T1694 LIMIT 1;

theCharVar = 'Hello from P2928';
dsply theCharVar;
callp localProc();
P1101();
P2917();
P2892();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2928 in the procedure';
end-proc;