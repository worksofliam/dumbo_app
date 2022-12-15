**free

ctl-opt dftactgrp(*no);

dcl-pi P5130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3259.rpgleinc'
/copy 'qrpgleref/P3977.rpgleinc'
/copy 'qrpgleref/P4759.rpgleinc'

dcl-ds theTable extname('T1084') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1084 LIMIT 1;

theCharVar = 'Hello from P5130';
dsply theCharVar;
callp localProc();
P3259();
P3977();
P4759();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5130 in the procedure';
end-proc;