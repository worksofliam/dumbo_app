**free

ctl-opt dftactgrp(*no);

dcl-pi P3737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2227.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P3380.rpgleinc'

dcl-ds theTable extname('T1206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1206 LIMIT 1;

theCharVar = 'Hello from P3737';
dsply theCharVar;
callp localProc();
P2227();
P299();
P3380();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3737 in the procedure';
end-proc;