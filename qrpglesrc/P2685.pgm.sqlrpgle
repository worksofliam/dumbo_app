**free

ctl-opt dftactgrp(*no);

dcl-pi P2685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2084.rpgleinc'
/copy 'qrpgleref/P1709.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'

dcl-ds theTable extname('T814') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T814 LIMIT 1;

theCharVar = 'Hello from P2685';
dsply theCharVar;
callp localProc();
P2084();
P1709();
P772();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2685 in the procedure';
end-proc;