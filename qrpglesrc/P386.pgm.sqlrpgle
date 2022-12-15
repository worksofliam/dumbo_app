**free

ctl-opt dftactgrp(*no);

dcl-pi P386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds theTable extname('T1405') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1405 LIMIT 1;

theCharVar = 'Hello from P386';
dsply theCharVar;
callp localProc();
P364();
P239();
P193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P386 in the procedure';
end-proc;