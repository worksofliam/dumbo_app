**free

ctl-opt dftactgrp(*no);

dcl-pi P4167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3073.rpgleinc'
/copy 'qrpgleref/P2200.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'

dcl-ds theTable extname('T413') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T413 LIMIT 1;

theCharVar = 'Hello from P4167';
dsply theCharVar;
callp localProc();
P3073();
P2200();
P907();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4167 in the procedure';
end-proc;