**free

ctl-opt dftactgrp(*no);

dcl-pi P5291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P3422.rpgleinc'
/copy 'qrpgleref/P4040.rpgleinc'

dcl-ds theTable extname('T1458') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1458 LIMIT 1;

theCharVar = 'Hello from P5291';
dsply theCharVar;
callp localProc();
P445();
P3422();
P4040();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5291 in the procedure';
end-proc;