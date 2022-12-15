**free

ctl-opt dftactgrp(*no);

dcl-pi P3320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P2520.rpgleinc'
/copy 'qrpgleref/P3312.rpgleinc'

dcl-ds theTable extname('T878') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T878 LIMIT 1;

theCharVar = 'Hello from P3320';
dsply theCharVar;
callp localProc();
P216();
P2520();
P3312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3320 in the procedure';
end-proc;