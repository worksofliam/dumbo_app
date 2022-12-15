**free

ctl-opt dftactgrp(*no);

dcl-pi P3061;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1473.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'

dcl-ds theTable extname('T1034') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1034 LIMIT 1;

theCharVar = 'Hello from P3061';
dsply theCharVar;
callp localProc();
P1473();
P617();
P774();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3061 in the procedure';
end-proc;