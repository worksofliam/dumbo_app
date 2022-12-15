**free

ctl-opt dftactgrp(*no);

dcl-pi P3216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2031.rpgleinc'
/copy 'qrpgleref/P3130.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'

dcl-ds theTable extname('T992') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T992 LIMIT 1;

theCharVar = 'Hello from P3216';
dsply theCharVar;
callp localProc();
P2031();
P3130();
P471();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3216 in the procedure';
end-proc;