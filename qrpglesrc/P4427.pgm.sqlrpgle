**free

ctl-opt dftactgrp(*no);

dcl-pi P4427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4083.rpgleinc'
/copy 'qrpgleref/P959.rpgleinc'
/copy 'qrpgleref/P2203.rpgleinc'

dcl-ds theTable extname('T249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T249 LIMIT 1;

theCharVar = 'Hello from P4427';
dsply theCharVar;
callp localProc();
P4083();
P959();
P2203();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4427 in the procedure';
end-proc;