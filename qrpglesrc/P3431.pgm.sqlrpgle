**free

ctl-opt dftactgrp(*no);

dcl-pi P3431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1805.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P3094.rpgleinc'

dcl-ds theTable extname('T1259') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1259 LIMIT 1;

theCharVar = 'Hello from P3431';
dsply theCharVar;
callp localProc();
P1805();
P7();
P3094();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3431 in the procedure';
end-proc;