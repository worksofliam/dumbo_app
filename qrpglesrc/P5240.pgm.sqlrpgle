**free

ctl-opt dftactgrp(*no);

dcl-pi P5240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3408.rpgleinc'
/copy 'qrpgleref/P2134.rpgleinc'
/copy 'qrpgleref/P4683.rpgleinc'

dcl-ds theTable extname('T925') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T925 LIMIT 1;

theCharVar = 'Hello from P5240';
dsply theCharVar;
callp localProc();
P3408();
P2134();
P4683();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5240 in the procedure';
end-proc;