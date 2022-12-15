**free

ctl-opt dftactgrp(*no);

dcl-pi P5;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T149') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T149 LIMIT 1;

theCharVar = 'Hello from P5';
dsply theCharVar;
callp localProc();
P4();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5 in the procedure';
end-proc;