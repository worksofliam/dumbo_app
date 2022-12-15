**free

ctl-opt dftactgrp(*no);

dcl-pi P2346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1545.rpgleinc'
/copy 'qrpgleref/P1275.rpgleinc'
/copy 'qrpgleref/P2207.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P2346';
dsply theCharVar;
callp localProc();
P1545();
P1275();
P2207();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2346 in the procedure';
end-proc;