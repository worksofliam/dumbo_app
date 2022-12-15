**free

ctl-opt dftactgrp(*no);

dcl-pi P4513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1668.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P2893.rpgleinc'

dcl-ds theTable extname('T224') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T224 LIMIT 1;

theCharVar = 'Hello from P4513';
dsply theCharVar;
callp localProc();
P1668();
P195();
P2893();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4513 in the procedure';
end-proc;