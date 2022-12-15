**free

ctl-opt dftactgrp(*no);

dcl-pi P2501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P946.rpgleinc'
/copy 'qrpgleref/P2034.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'

dcl-ds T1218 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1218 FROM T1218 LIMIT 1;

theCharVar = 'Hello from P2501';
dsply theCharVar;
callp localProc();
P946();
P2034();
P687();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2501 in the procedure';
end-proc;