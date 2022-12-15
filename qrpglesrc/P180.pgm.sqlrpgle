**free

ctl-opt dftactgrp(*no);

dcl-pi P180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'

dcl-ds theTable extname('T516') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T516 LIMIT 1;

theCharVar = 'Hello from P180';
dsply theCharVar;
callp localProc();
P24();
P16();
P104();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P180 in the procedure';
end-proc;