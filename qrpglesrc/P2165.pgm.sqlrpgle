**free

ctl-opt dftactgrp(*no);

dcl-pi P2165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1672.rpgleinc'
/copy 'qrpgleref/P1362.rpgleinc'
/copy 'qrpgleref/P1927.rpgleinc'

dcl-ds T1237 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1237 FROM T1237 LIMIT 1;

theCharVar = 'Hello from P2165';
dsply theCharVar;
callp localProc();
P1672();
P1362();
P1927();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2165 in the procedure';
end-proc;