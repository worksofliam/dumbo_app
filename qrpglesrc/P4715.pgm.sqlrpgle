**free

ctl-opt dftactgrp(*no);

dcl-pi P4715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3609.rpgleinc'
/copy 'qrpgleref/P894.rpgleinc'
/copy 'qrpgleref/P3209.rpgleinc'

dcl-ds theTable extname('T1140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1140 LIMIT 1;

theCharVar = 'Hello from P4715';
dsply theCharVar;
callp localProc();
P3609();
P894();
P3209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4715 in the procedure';
end-proc;