**free

ctl-opt dftactgrp(*no);

dcl-pi P5015;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P677.rpgleinc'
/copy 'qrpgleref/P4214.rpgleinc'
/copy 'qrpgleref/P4702.rpgleinc'

dcl-ds theTable extname('T278') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T278 LIMIT 1;

theCharVar = 'Hello from P5015';
dsply theCharVar;
callp localProc();
P677();
P4214();
P4702();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5015 in the procedure';
end-proc;