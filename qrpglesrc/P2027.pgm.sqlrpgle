**free

ctl-opt dftactgrp(*no);

dcl-pi P2027;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1214.rpgleinc'
/copy 'qrpgleref/P1758.rpgleinc'
/copy 'qrpgleref/P1675.rpgleinc'

dcl-ds T217 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T217 FROM T217 LIMIT 1;

theCharVar = 'Hello from P2027';
dsply theCharVar;
callp localProc();
P1214();
P1758();
P1675();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2027 in the procedure';
end-proc;