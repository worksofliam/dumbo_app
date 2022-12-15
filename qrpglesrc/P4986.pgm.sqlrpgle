**free

ctl-opt dftactgrp(*no);

dcl-pi P4986;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4904.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P1303.rpgleinc'

dcl-ds theTable extname('T1500') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1500 LIMIT 1;

theCharVar = 'Hello from P4986';
dsply theCharVar;
callp localProc();
P4904();
P652();
P1303();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4986 in the procedure';
end-proc;