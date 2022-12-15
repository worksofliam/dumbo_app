**free

ctl-opt dftactgrp(*no);

dcl-pi P404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'

dcl-ds theTable extname('T945') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T945 LIMIT 1;

theCharVar = 'Hello from P404';
dsply theCharVar;
callp localProc();
P40();
P22();
P360();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P404 in the procedure';
end-proc;