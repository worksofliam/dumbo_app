**free

ctl-opt dftactgrp(*no);

dcl-pi P1818;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1400.rpgleinc'
/copy 'qrpgleref/P918.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'

dcl-ds T892 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T892 FROM T892 LIMIT 1;

theCharVar = 'Hello from P1818';
dsply theCharVar;
callp localProc();
P1400();
P918();
P230();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1818 in the procedure';
end-proc;