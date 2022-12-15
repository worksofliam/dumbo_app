**free

ctl-opt dftactgrp(*no);

dcl-pi P5259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4946.rpgleinc'
/copy 'qrpgleref/P4217.rpgleinc'
/copy 'qrpgleref/P3408.rpgleinc'

dcl-ds theTable extname('T960') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T960 LIMIT 1;

theCharVar = 'Hello from P5259';
dsply theCharVar;
callp localProc();
P4946();
P4217();
P3408();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5259 in the procedure';
end-proc;