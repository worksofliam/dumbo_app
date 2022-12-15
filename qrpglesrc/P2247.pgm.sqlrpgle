**free

ctl-opt dftactgrp(*no);

dcl-pi P2247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P1071.rpgleinc'
/copy 'qrpgleref/P1237.rpgleinc'

dcl-ds T191 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T191 FROM T191 LIMIT 1;

theCharVar = 'Hello from P2247';
dsply theCharVar;
callp localProc();
P1800();
P1071();
P1237();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2247 in the procedure';
end-proc;