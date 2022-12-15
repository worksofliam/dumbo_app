**free

ctl-opt dftactgrp(*no);

dcl-pi P1437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P1232.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'

dcl-ds theTable extname('T833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T833 LIMIT 1;

theCharVar = 'Hello from P1437';
dsply theCharVar;
callp localProc();
P519();
P1232();
P1042();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1437 in the procedure';
end-proc;