**free

ctl-opt dftactgrp(*no);

dcl-pi P268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T430 LIMIT 1;

theCharVar = 'Hello from P268';
dsply theCharVar;
callp localProc();
P156();
P209();
P100();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P268 in the procedure';
end-proc;