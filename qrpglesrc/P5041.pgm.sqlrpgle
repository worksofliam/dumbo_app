**free

ctl-opt dftactgrp(*no);

dcl-pi P5041;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3241.rpgleinc'
/copy 'qrpgleref/P4125.rpgleinc'
/copy 'qrpgleref/P4945.rpgleinc'

dcl-ds theTable extname('T101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T101 LIMIT 1;

theCharVar = 'Hello from P5041';
dsply theCharVar;
callp localProc();
P3241();
P4125();
P4945();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5041 in the procedure';
end-proc;