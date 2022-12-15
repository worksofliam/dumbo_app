**free

ctl-opt dftactgrp(*no);

dcl-pi P4571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3973.rpgleinc'
/copy 'qrpgleref/P3245.rpgleinc'
/copy 'qrpgleref/P2544.rpgleinc'

dcl-ds theTable extname('T662') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T662 LIMIT 1;

theCharVar = 'Hello from P4571';
dsply theCharVar;
callp localProc();
P3973();
P3245();
P2544();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4571 in the procedure';
end-proc;