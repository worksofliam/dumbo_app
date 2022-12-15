**free

ctl-opt dftactgrp(*no);

dcl-pi P1236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P1112.rpgleinc'

dcl-ds theTable extname('T224') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T224 LIMIT 1;

theCharVar = 'Hello from P1236';
dsply theCharVar;
callp localProc();
P664();
P519();
P1112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1236 in the procedure';
end-proc;