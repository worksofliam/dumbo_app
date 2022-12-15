**free

ctl-opt dftactgrp(*no);

dcl-pi P750;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'

dcl-ds theTable extname('T232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T232 LIMIT 1;

theCharVar = 'Hello from P750';
dsply theCharVar;
callp localProc();
P542();
P243();
P579();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P750 in the procedure';
end-proc;