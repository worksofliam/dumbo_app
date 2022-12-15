**free

ctl-opt dftactgrp(*no);

dcl-pi P4462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3580.rpgleinc'
/copy 'qrpgleref/P3977.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'

dcl-ds theTable extname('T1629') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1629 LIMIT 1;

theCharVar = 'Hello from P4462';
dsply theCharVar;
callp localProc();
P3580();
P3977();
P185();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4462 in the procedure';
end-proc;