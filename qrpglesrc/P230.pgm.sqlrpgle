**free

ctl-opt dftactgrp(*no);

dcl-pi P230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds theTable extname('T207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T207 LIMIT 1;

theCharVar = 'Hello from P230';
dsply theCharVar;
callp localProc();
P3();
P88();
P24();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P230 in the procedure';
end-proc;