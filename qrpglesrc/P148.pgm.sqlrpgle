**free

ctl-opt dftactgrp(*no);

dcl-pi P148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P148';
dsply theCharVar;
callp localProc();
P108();
P61();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P148 in the procedure';
end-proc;