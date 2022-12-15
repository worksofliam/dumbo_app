**free

ctl-opt dftactgrp(*no);

dcl-pi P5428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P528.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P1101.rpgleinc'

dcl-ds theTable extname('T609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T609 LIMIT 1;

theCharVar = 'Hello from P5428';
dsply theCharVar;
callp localProc();
P528();
P957();
P1101();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5428 in the procedure';
end-proc;