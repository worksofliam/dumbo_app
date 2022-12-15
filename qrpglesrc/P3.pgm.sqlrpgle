**free

ctl-opt dftactgrp(*no);

dcl-pi P3;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T999') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T999 LIMIT 1;

theCharVar = 'Hello from P3';
dsply theCharVar;
callp localProc();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3 in the procedure';
end-proc;