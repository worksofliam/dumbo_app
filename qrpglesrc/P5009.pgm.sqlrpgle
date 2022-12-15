**free

ctl-opt dftactgrp(*no);

dcl-pi P5009;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P771.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P4092.rpgleinc'

dcl-ds theTable extname('T1812') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1812 LIMIT 1;

theCharVar = 'Hello from P5009';
dsply theCharVar;
callp localProc();
P771();
P611();
P4092();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5009 in the procedure';
end-proc;