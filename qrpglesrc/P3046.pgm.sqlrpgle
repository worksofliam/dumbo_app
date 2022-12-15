**free

ctl-opt dftactgrp(*no);

dcl-pi P3046;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P2255.rpgleinc'

dcl-ds theTable extname('T598') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T598 LIMIT 1;

theCharVar = 'Hello from P3046';
dsply theCharVar;
callp localProc();
P697();
P426();
P2255();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3046 in the procedure';
end-proc;