**free

ctl-opt dftactgrp(*no);

dcl-pi P1708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1469.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P1492.rpgleinc'

dcl-ds theTable extname('T162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T162 LIMIT 1;

theCharVar = 'Hello from P1708';
dsply theCharVar;
callp localProc();
P1469();
P207();
P1492();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1708 in the procedure';
end-proc;