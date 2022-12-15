**free

ctl-opt dftactgrp(*no);

dcl-pi P27;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds theTable extname('T388') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T388 LIMIT 1;

theCharVar = 'Hello from P27';
dsply theCharVar;
callp localProc();
P24();
P1();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P27 in the procedure';
end-proc;