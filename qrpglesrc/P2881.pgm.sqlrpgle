**free

ctl-opt dftactgrp(*no);

dcl-pi P2881;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1243.rpgleinc'
/copy 'qrpgleref/P1837.rpgleinc'
/copy 'qrpgleref/P2049.rpgleinc'

dcl-ds T1122 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1122 FROM T1122 LIMIT 1;

theCharVar = 'Hello from P2881';
dsply theCharVar;
callp localProc();
P1243();
P1837();
P2049();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2881 in the procedure';
end-proc;