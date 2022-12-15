**free

ctl-opt dftactgrp(*no);

dcl-pi P5338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4200.rpgleinc'
/copy 'qrpgleref/P1843.rpgleinc'
/copy 'qrpgleref/P5219.rpgleinc'

dcl-ds theTable extname('T1136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1136 LIMIT 1;

theCharVar = 'Hello from P5338';
dsply theCharVar;
callp localProc();
P4200();
P1843();
P5219();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5338 in the procedure';
end-proc;