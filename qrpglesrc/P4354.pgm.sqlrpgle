**free

ctl-opt dftactgrp(*no);

dcl-pi P4354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P712.rpgleinc'
/copy 'qrpgleref/P3515.rpgleinc'
/copy 'qrpgleref/P2712.rpgleinc'

dcl-ds theTable extname('T1648') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1648 LIMIT 1;

theCharVar = 'Hello from P4354';
dsply theCharVar;
callp localProc();
P712();
P3515();
P2712();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4354 in the procedure';
end-proc;