**free

ctl-opt dftactgrp(*no);

dcl-pi P537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P537';
dsply theCharVar;
callp localProc();
P241();
P5();
P94();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P537 in the procedure';
end-proc;