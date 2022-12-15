**free

ctl-opt dftactgrp(*no);

dcl-pi P377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T153') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T153 LIMIT 1;

theCharVar = 'Hello from P377';
dsply theCharVar;
callp localProc();
P190();
P64();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P377 in the procedure';
end-proc;