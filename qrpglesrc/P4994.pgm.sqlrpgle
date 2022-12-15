**free

ctl-opt dftactgrp(*no);

dcl-pi P4994;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2680.rpgleinc'
/copy 'qrpgleref/P1813.rpgleinc'
/copy 'qrpgleref/P3903.rpgleinc'

dcl-ds theTable extname('T498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T498 LIMIT 1;

theCharVar = 'Hello from P4994';
dsply theCharVar;
callp localProc();
P2680();
P1813();
P3903();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4994 in the procedure';
end-proc;