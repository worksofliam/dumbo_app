**free

ctl-opt dftactgrp(*no);

dcl-pi P3954;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3329.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'

dcl-ds theTable extname('T455') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T455 LIMIT 1;

theCharVar = 'Hello from P3954';
dsply theCharVar;
callp localProc();
P3329();
P1055();
P1469();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3954 in the procedure';
end-proc;