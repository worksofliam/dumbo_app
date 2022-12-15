**free

ctl-opt dftactgrp(*no);

dcl-pi P1228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P1201.rpgleinc'
/copy 'qrpgleref/P680.rpgleinc'

dcl-ds theTable extname('T1039') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1039 LIMIT 1;

theCharVar = 'Hello from P1228';
dsply theCharVar;
callp localProc();
P527();
P1201();
P680();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1228 in the procedure';
end-proc;