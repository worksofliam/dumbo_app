**free

ctl-opt dftactgrp(*no);

dcl-pi P1354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P1131.rpgleinc'

dcl-ds theTable extname('T835') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T835 LIMIT 1;

theCharVar = 'Hello from P1354';
dsply theCharVar;
callp localProc();
P327();
P629();
P1131();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1354 in the procedure';
end-proc;