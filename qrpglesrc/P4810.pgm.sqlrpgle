**free

ctl-opt dftactgrp(*no);

dcl-pi P4810;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3792.rpgleinc'
/copy 'qrpgleref/P3611.rpgleinc'
/copy 'qrpgleref/P2410.rpgleinc'

dcl-ds theTable extname('T678') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T678 LIMIT 1;

theCharVar = 'Hello from P4810';
dsply theCharVar;
callp localProc();
P3792();
P3611();
P2410();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4810 in the procedure';
end-proc;