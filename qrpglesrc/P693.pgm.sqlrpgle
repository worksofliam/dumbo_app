**free

ctl-opt dftactgrp(*no);

dcl-pi P693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T139 LIMIT 1;

theCharVar = 'Hello from P693';
dsply theCharVar;
callp localProc();
P157();
P399();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P693 in the procedure';
end-proc;