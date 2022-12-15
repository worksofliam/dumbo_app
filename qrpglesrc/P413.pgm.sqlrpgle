**free

ctl-opt dftactgrp(*no);

dcl-pi P413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T429 LIMIT 1;

theCharVar = 'Hello from P413';
dsply theCharVar;
callp localProc();
P264();
P336();
P50();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P413 in the procedure';
end-proc;