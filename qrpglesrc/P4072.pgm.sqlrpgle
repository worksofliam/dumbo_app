**free

ctl-opt dftactgrp(*no);

dcl-pi P4072;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P1987.rpgleinc'
/copy 'qrpgleref/P1819.rpgleinc'

dcl-ds theTable extname('T1287') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1287 LIMIT 1;

theCharVar = 'Hello from P4072';
dsply theCharVar;
callp localProc();
P587();
P1987();
P1819();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4072 in the procedure';
end-proc;