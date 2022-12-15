**free

ctl-opt dftactgrp(*no);

dcl-pi P1565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1358.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'

dcl-ds theTable extname('T904') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T904 LIMIT 1;

theCharVar = 'Hello from P1565';
dsply theCharVar;
callp localProc();
P1358();
P1469();
P297();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1565 in the procedure';
end-proc;