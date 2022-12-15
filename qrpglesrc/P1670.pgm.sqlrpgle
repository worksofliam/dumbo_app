**free

ctl-opt dftactgrp(*no);

dcl-pi P1670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P1479.rpgleinc'
/copy 'qrpgleref/P865.rpgleinc'

dcl-ds theTable extname('T325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T325 LIMIT 1;

theCharVar = 'Hello from P1670';
dsply theCharVar;
callp localProc();
P176();
P1479();
P865();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1670 in the procedure';
end-proc;