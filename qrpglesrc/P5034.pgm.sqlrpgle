**free

ctl-opt dftactgrp(*no);

dcl-pi P5034;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1215.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P2512.rpgleinc'

dcl-ds theTable extname('T1385') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1385 LIMIT 1;

theCharVar = 'Hello from P5034';
dsply theCharVar;
callp localProc();
P1215();
P591();
P2512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5034 in the procedure';
end-proc;