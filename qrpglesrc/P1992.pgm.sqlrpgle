**free

ctl-opt dftactgrp(*no);

dcl-pi P1992;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1962.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P1227.rpgleinc'

dcl-ds T1560 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1560 FROM T1560 LIMIT 1;

theCharVar = 'Hello from P1992';
dsply theCharVar;
callp localProc();
P1962();
P816();
P1227();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1992 in the procedure';
end-proc;