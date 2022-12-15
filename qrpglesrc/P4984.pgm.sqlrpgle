**free

ctl-opt dftactgrp(*no);

dcl-pi P4984;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3614.rpgleinc'
/copy 'qrpgleref/P3204.rpgleinc'
/copy 'qrpgleref/P1029.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P4984';
dsply theCharVar;
callp localProc();
P3614();
P3204();
P1029();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4984 in the procedure';
end-proc;