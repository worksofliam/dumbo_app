**free

ctl-opt dftactgrp(*no);

dcl-pi P221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds theTable extname('T200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T200 LIMIT 1;

theCharVar = 'Hello from P221';
dsply theCharVar;
callp localProc();
P55();
P83();
P73();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P221 in the procedure';
end-proc;