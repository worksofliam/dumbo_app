**free

ctl-opt dftactgrp(*no);

dcl-pi P1010;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'

dcl-ds theTable extname('T594') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T594 LIMIT 1;

theCharVar = 'Hello from P1010';
dsply theCharVar;
callp localProc();
P879();
P913();
P472();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1010 in the procedure';
end-proc;