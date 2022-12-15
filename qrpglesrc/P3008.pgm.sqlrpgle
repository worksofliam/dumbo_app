**free

ctl-opt dftactgrp(*no);

dcl-pi P3008;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2075.rpgleinc'
/copy 'qrpgleref/P2068.rpgleinc'
/copy 'qrpgleref/P1209.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P3008';
dsply theCharVar;
callp localProc();
P2075();
P2068();
P1209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3008 in the procedure';
end-proc;