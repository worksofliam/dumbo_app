**free

ctl-opt dftactgrp(*no);

dcl-pi P2242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P741.rpgleinc'
/copy 'qrpgleref/P994.rpgleinc'

dcl-ds theTable extname('T705') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T705 LIMIT 1;

theCharVar = 'Hello from P2242';
dsply theCharVar;
callp localProc();
P1182();
P741();
P994();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2242 in the procedure';
end-proc;