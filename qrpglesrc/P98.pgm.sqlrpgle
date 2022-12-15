**free

ctl-opt dftactgrp(*no);

dcl-pi P98;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T109 LIMIT 1;

theCharVar = 'Hello from P98';
dsply theCharVar;
callp localProc();
P55();
P25();
P40();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P98 in the procedure';
end-proc;