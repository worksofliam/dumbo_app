**free

ctl-opt dftactgrp(*no);

dcl-pi P3513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'

dcl-ds theTable extname('T365') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T365 LIMIT 1;

theCharVar = 'Hello from P3513';
dsply theCharVar;
callp localProc();
P425();
P490();
P489();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3513 in the procedure';
end-proc;