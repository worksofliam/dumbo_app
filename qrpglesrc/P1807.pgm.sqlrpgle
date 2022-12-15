**free

ctl-opt dftactgrp(*no);

dcl-pi P1807;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P1794.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P1807';
dsply theCharVar;
callp localProc();
P91();
P1794();
P1220();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1807 in the procedure';
end-proc;