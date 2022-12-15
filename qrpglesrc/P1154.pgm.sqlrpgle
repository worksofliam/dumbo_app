**free

ctl-opt dftactgrp(*no);

dcl-pi P1154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'

dcl-ds theTable extname('T376') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T376 LIMIT 1;

theCharVar = 'Hello from P1154';
dsply theCharVar;
callp localProc();
P137();
P243();
P423();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1154 in the procedure';
end-proc;