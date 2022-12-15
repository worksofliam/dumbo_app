**free

ctl-opt dftactgrp(*no);

dcl-pi P3821;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1636.rpgleinc'
/copy 'qrpgleref/P2792.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'

dcl-ds theTable extname('T869') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T869 LIMIT 1;

theCharVar = 'Hello from P3821';
dsply theCharVar;
callp localProc();
P1636();
P2792();
P279();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3821 in the procedure';
end-proc;