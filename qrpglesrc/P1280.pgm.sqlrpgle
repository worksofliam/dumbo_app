**free

ctl-opt dftactgrp(*no);

dcl-pi P1280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P702.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'

dcl-ds theTable extname('T799') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T799 LIMIT 1;

theCharVar = 'Hello from P1280';
dsply theCharVar;
callp localProc();
P637();
P702();
P531();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1280 in the procedure';
end-proc;