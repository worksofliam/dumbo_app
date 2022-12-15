**free

ctl-opt dftactgrp(*no);

dcl-pi P3518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P3413.rpgleinc'
/copy 'qrpgleref/P2316.rpgleinc'

dcl-ds theTable extname('T548') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T548 LIMIT 1;

theCharVar = 'Hello from P3518';
dsply theCharVar;
callp localProc();
P757();
P3413();
P2316();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3518 in the procedure';
end-proc;