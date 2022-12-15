**free

ctl-opt dftactgrp(*no);

dcl-pi P1535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P829.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds theTable extname('T925') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T925 LIMIT 1;

theCharVar = 'Hello from P1535';
dsply theCharVar;
callp localProc();
P174();
P829();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1535 in the procedure';
end-proc;