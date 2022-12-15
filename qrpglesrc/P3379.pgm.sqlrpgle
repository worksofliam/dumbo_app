**free

ctl-opt dftactgrp(*no);

dcl-pi P3379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1170.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P1909.rpgleinc'

dcl-ds theTable extname('T1180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1180 LIMIT 1;

theCharVar = 'Hello from P3379';
dsply theCharVar;
callp localProc();
P1170();
P360();
P1909();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3379 in the procedure';
end-proc;