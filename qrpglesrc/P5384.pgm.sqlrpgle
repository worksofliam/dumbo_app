**free

ctl-opt dftactgrp(*no);

dcl-pi P5384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5180.rpgleinc'
/copy 'qrpgleref/P1256.rpgleinc'
/copy 'qrpgleref/P5095.rpgleinc'

dcl-ds theTable extname('T856') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T856 LIMIT 1;

theCharVar = 'Hello from P5384';
dsply theCharVar;
callp localProc();
P5180();
P1256();
P5095();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5384 in the procedure';
end-proc;