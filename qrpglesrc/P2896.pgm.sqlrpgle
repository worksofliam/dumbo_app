**free

ctl-opt dftactgrp(*no);

dcl-pi P2896;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P574.rpgleinc'
/copy 'qrpgleref/P1973.rpgleinc'

dcl-ds T1744 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1744 FROM T1744 LIMIT 1;

theCharVar = 'Hello from P2896';
dsply theCharVar;
callp localProc();
P700();
P574();
P1973();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2896 in the procedure';
end-proc;