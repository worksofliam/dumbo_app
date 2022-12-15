**free

ctl-opt dftactgrp(*no);

dcl-pi P1867;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P1823.rpgleinc'

dcl-ds theTable extname('T1044') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1044 LIMIT 1;

theCharVar = 'Hello from P1867';
dsply theCharVar;
callp localProc();
P383();
P812();
P1823();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1867 in the procedure';
end-proc;