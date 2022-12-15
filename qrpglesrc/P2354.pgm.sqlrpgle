**free

ctl-opt dftactgrp(*no);

dcl-pi P2354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P822.rpgleinc'
/copy 'qrpgleref/P951.rpgleinc'

dcl-ds theTable extname('T332') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T332 LIMIT 1;

theCharVar = 'Hello from P2354';
dsply theCharVar;
callp localProc();
P558();
P822();
P951();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2354 in the procedure';
end-proc;