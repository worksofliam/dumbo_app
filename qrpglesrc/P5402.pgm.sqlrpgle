**free

ctl-opt dftactgrp(*no);

dcl-pi P5402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4925.rpgleinc'
/copy 'qrpgleref/P3757.rpgleinc'
/copy 'qrpgleref/P2250.rpgleinc'

dcl-ds T565 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T565 FROM T565 LIMIT 1;

theCharVar = 'Hello from P5402';
dsply theCharVar;
callp localProc();
P4925();
P3757();
P2250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5402 in the procedure';
end-proc;