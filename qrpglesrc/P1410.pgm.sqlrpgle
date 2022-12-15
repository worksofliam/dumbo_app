**free

ctl-opt dftactgrp(*no);

dcl-pi P1410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'
/copy 'qrpgleref/P1383.rpgleinc'

dcl-ds theTable extname('T756') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T756 LIMIT 1;

theCharVar = 'Hello from P1410';
dsply theCharVar;
callp localProc();
P224();
P1192();
P1383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1410 in the procedure';
end-proc;