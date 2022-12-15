**free

ctl-opt dftactgrp(*no);

dcl-pi P1487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'

dcl-ds theTable extname('T791') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T791 LIMIT 1;

theCharVar = 'Hello from P1487';
dsply theCharVar;
callp localProc();
P176();
P1469();
P456();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1487 in the procedure';
end-proc;