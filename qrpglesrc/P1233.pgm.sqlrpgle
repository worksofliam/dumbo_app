**free

ctl-opt dftactgrp(*no);

dcl-pi P1233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P1009.rpgleinc'

dcl-ds theTable extname('T948') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T948 LIMIT 1;

theCharVar = 'Hello from P1233';
dsply theCharVar;
callp localProc();
P431();
P526();
P1009();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1233 in the procedure';
end-proc;