**free

ctl-opt dftactgrp(*no);

dcl-pi P2267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1606.rpgleinc'
/copy 'qrpgleref/P1467.rpgleinc'
/copy 'qrpgleref/P1007.rpgleinc'

dcl-ds theTable extname('T684') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T684 LIMIT 1;

theCharVar = 'Hello from P2267';
dsply theCharVar;
callp localProc();
P1606();
P1467();
P1007();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2267 in the procedure';
end-proc;