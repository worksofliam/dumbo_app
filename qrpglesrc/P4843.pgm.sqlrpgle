**free

ctl-opt dftactgrp(*no);

dcl-pi P4843;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2586.rpgleinc'
/copy 'qrpgleref/P1034.rpgleinc'
/copy 'qrpgleref/P1732.rpgleinc'

dcl-ds T1566 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1566 FROM T1566 LIMIT 1;

theCharVar = 'Hello from P4843';
dsply theCharVar;
callp localProc();
P2586();
P1034();
P1732();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4843 in the procedure';
end-proc;