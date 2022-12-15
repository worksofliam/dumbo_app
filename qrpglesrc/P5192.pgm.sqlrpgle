**free

ctl-opt dftactgrp(*no);

dcl-pi P5192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1464.rpgleinc'
/copy 'qrpgleref/P3642.rpgleinc'
/copy 'qrpgleref/P3056.rpgleinc'

dcl-ds theTable extname('T1047') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1047 LIMIT 1;

theCharVar = 'Hello from P5192';
dsply theCharVar;
callp localProc();
P1464();
P3642();
P3056();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5192 in the procedure';
end-proc;