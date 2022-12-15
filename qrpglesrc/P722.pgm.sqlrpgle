**free

ctl-opt dftactgrp(*no);

dcl-pi P722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'

dcl-ds theTable extname('T1050') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1050 LIMIT 1;

theCharVar = 'Hello from P722';
dsply theCharVar;
callp localProc();
P126();
P718();
P519();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P722 in the procedure';
end-proc;