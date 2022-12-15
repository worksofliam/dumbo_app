**free

ctl-opt dftactgrp(*no);

dcl-pi P1407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1214.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T531') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T531 LIMIT 1;

theCharVar = 'Hello from P1407';
dsply theCharVar;
callp localProc();
P1214();
P101();
P313();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1407 in the procedure';
end-proc;