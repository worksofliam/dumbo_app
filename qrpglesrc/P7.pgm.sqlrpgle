**free

ctl-opt dftactgrp(*no);

dcl-pi P7;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T294') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T294 LIMIT 1;

theCharVar = 'Hello from P7';
dsply theCharVar;
callp localProc();
P0();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P7 in the procedure';
end-proc;