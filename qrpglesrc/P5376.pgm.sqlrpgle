**free

ctl-opt dftactgrp(*no);

dcl-pi P5376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4272.rpgleinc'
/copy 'qrpgleref/P3050.rpgleinc'
/copy 'qrpgleref/P3331.rpgleinc'

dcl-ds theTable extname('T1844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1844 LIMIT 1;

theCharVar = 'Hello from P5376';
dsply theCharVar;
callp localProc();
P4272();
P3050();
P3331();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5376 in the procedure';
end-proc;