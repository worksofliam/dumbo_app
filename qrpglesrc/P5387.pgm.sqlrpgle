**free

ctl-opt dftactgrp(*no);

dcl-pi P5387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3104.rpgleinc'
/copy 'qrpgleref/P3729.rpgleinc'
/copy 'qrpgleref/P5338.rpgleinc'

dcl-ds theTable extname('T1550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1550 LIMIT 1;

theCharVar = 'Hello from P5387';
dsply theCharVar;
callp localProc();
P3104();
P3729();
P5338();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5387 in the procedure';
end-proc;