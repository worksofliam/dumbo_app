**free

ctl-opt dftactgrp(*no);

dcl-pi P2141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P1795.rpgleinc'
/copy 'qrpgleref/P1508.rpgleinc'

dcl-ds theTable extname('T810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T810 LIMIT 1;

theCharVar = 'Hello from P2141';
dsply theCharVar;
callp localProc();
P701();
P1795();
P1508();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2141 in the procedure';
end-proc;