**free

ctl-opt dftactgrp(*no);

dcl-pi P5087;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P3975.rpgleinc'
/copy 'qrpgleref/P2661.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P5087';
dsply theCharVar;
callp localProc();
P473();
P3975();
P2661();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5087 in the procedure';
end-proc;