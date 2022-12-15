**free

ctl-opt dftactgrp(*no);

dcl-pi P3402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P2963.rpgleinc'
/copy 'qrpgleref/P1122.rpgleinc'

dcl-ds theTable extname('T689') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T689 LIMIT 1;

theCharVar = 'Hello from P3402';
dsply theCharVar;
callp localProc();
P377();
P2963();
P1122();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3402 in the procedure';
end-proc;