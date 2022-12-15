**free

ctl-opt dftactgrp(*no);

dcl-pi P5581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2241.rpgleinc'
/copy 'qrpgleref/P5019.rpgleinc'
/copy 'qrpgleref/P1674.rpgleinc'

dcl-ds theTable extname('T1055') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1055 LIMIT 1;

theCharVar = 'Hello from P5581';
dsply theCharVar;
callp localProc();
P2241();
P5019();
P1674();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5581 in the procedure';
end-proc;