**free

ctl-opt dftactgrp(*no);

dcl-pi P391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds theTable extname('T609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T609 LIMIT 1;

theCharVar = 'Hello from P391';
dsply theCharVar;
callp localProc();
P94();
P317();
P164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P391 in the procedure';
end-proc;