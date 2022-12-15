**free

ctl-opt dftactgrp(*no);

dcl-pi P2792;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1067.rpgleinc'
/copy 'qrpgleref/P1730.rpgleinc'
/copy 'qrpgleref/P2388.rpgleinc'

dcl-ds theTable extname('T291') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T291 LIMIT 1;

theCharVar = 'Hello from P2792';
dsply theCharVar;
callp localProc();
P1067();
P1730();
P2388();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2792 in the procedure';
end-proc;