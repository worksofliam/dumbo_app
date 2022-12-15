**free

ctl-opt dftactgrp(*no);

dcl-pi P897;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P267.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'

dcl-ds theTable extname('T296') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T296 LIMIT 1;

theCharVar = 'Hello from P897';
dsply theCharVar;
callp localProc();
P267();
P220();
P502();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P897 in the procedure';
end-proc;