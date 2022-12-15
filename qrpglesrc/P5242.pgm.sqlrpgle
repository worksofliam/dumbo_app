**free

ctl-opt dftactgrp(*no);

dcl-pi P5242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1862.rpgleinc'
/copy 'qrpgleref/P976.rpgleinc'
/copy 'qrpgleref/P1918.rpgleinc'

dcl-ds theTable extname('T1055') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1055 LIMIT 1;

theCharVar = 'Hello from P5242';
dsply theCharVar;
callp localProc();
P1862();
P976();
P1918();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5242 in the procedure';
end-proc;