**free

ctl-opt dftactgrp(*no);

dcl-pi P2285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P1350.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'

dcl-ds theTable extname('T200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T200 LIMIT 1;

theCharVar = 'Hello from P2285';
dsply theCharVar;
callp localProc();
P67();
P1350();
P929();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2285 in the procedure';
end-proc;