**free

ctl-opt dftactgrp(*no);

dcl-pi P5550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P4765.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'

dcl-ds theTable extname('T1836') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1836 LIMIT 1;

theCharVar = 'Hello from P5550';
dsply theCharVar;
callp localProc();
P797();
P4765();
P419();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5550 in the procedure';
end-proc;