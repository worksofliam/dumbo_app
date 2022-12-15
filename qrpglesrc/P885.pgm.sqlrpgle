**free

ctl-opt dftactgrp(*no);

dcl-pi P885;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'

dcl-ds theTable extname('T59') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T59 LIMIT 1;

theCharVar = 'Hello from P885';
dsply theCharVar;
callp localProc();
P102();
P852();
P531();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P885 in the procedure';
end-proc;