**free

ctl-opt dftactgrp(*no);

dcl-pi P1321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T1006') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1006 LIMIT 1;

theCharVar = 'Hello from P1321';
dsply theCharVar;
callp localProc();
P770();
P403();
P117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1321 in the procedure';
end-proc;