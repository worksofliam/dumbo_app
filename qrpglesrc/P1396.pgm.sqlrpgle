**free

ctl-opt dftactgrp(*no);

dcl-pi P1396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1369.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P1172.rpgleinc'

dcl-ds T387 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T387 FROM T387 LIMIT 1;

theCharVar = 'Hello from P1396';
dsply theCharVar;
callp localProc();
P1369();
P179();
P1172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1396 in the procedure';
end-proc;