**free

ctl-opt dftactgrp(*no);

dcl-pi P1553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1394.rpgleinc'
/copy 'qrpgleref/P835.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'

dcl-ds T1597 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1597 FROM T1597 LIMIT 1;

theCharVar = 'Hello from P1553';
dsply theCharVar;
callp localProc();
P1394();
P835();
P602();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1553 in the procedure';
end-proc;