**free

ctl-opt dftactgrp(*no);

dcl-pi P1506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P932.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'

dcl-ds theTable extname('T902') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T902 LIMIT 1;

theCharVar = 'Hello from P1506';
dsply theCharVar;
callp localProc();
P328();
P932();
P239();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1506 in the procedure';
end-proc;