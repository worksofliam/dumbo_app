**free

ctl-opt dftactgrp(*no);

dcl-pi P1258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P1059.rpgleinc'

dcl-ds theTable extname('T82') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T82 LIMIT 1;

theCharVar = 'Hello from P1258';
dsply theCharVar;
callp localProc();
P762();
P901();
P1059();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1258 in the procedure';
end-proc;