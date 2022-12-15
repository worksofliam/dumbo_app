**free

ctl-opt dftactgrp(*no);

dcl-pi P3071;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1937.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'
/copy 'qrpgleref/P2142.rpgleinc'

dcl-ds theTable extname('T232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T232 LIMIT 1;

theCharVar = 'Hello from P3071';
dsply theCharVar;
callp localProc();
P1937();
P1469();
P2142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3071 in the procedure';
end-proc;