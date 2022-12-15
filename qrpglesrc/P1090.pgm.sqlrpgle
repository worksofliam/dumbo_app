**free

ctl-opt dftactgrp(*no);

dcl-pi P1090;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'

dcl-ds theTable extname('T1803') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1803 LIMIT 1;

theCharVar = 'Hello from P1090';
dsply theCharVar;
callp localProc();
P980();
P494();
P390();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1090 in the procedure';
end-proc;