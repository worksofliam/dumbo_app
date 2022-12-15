**free

ctl-opt dftactgrp(*no);

dcl-pi P224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds theTable extname('T1866') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1866 LIMIT 1;

theCharVar = 'Hello from P224';
dsply theCharVar;
callp localProc();
P79();
P221();
P146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P224 in the procedure';
end-proc;