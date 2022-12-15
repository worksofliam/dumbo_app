**free

ctl-opt dftactgrp(*no);

dcl-pi P1321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P630.rpgleinc'
/copy 'qrpgleref/P691.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'

dcl-ds theTable extname('T232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T232 LIMIT 1;

theCharVar = 'Hello from P1321';
dsply theCharVar;
callp localProc();
P630();
P691();
P335();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1321 in the procedure';
end-proc;