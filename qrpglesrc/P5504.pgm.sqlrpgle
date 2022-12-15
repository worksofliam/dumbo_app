**free

ctl-opt dftactgrp(*no);

dcl-pi P5504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P4391.rpgleinc'
/copy 'qrpgleref/P4691.rpgleinc'

dcl-ds theTable extname('T188') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T188 LIMIT 1;

theCharVar = 'Hello from P5504';
dsply theCharVar;
callp localProc();
P791();
P4391();
P4691();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5504 in the procedure';
end-proc;