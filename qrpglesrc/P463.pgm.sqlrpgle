**free

ctl-opt dftactgrp(*no);

dcl-pi P463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T991') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T991 LIMIT 1;

theCharVar = 'Hello from P463';
dsply theCharVar;
callp localProc();
P347();
P34();
P250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P463 in the procedure';
end-proc;