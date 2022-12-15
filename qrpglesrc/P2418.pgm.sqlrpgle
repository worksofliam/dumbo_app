**free

ctl-opt dftactgrp(*no);

dcl-pi P2418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1171.rpgleinc'
/copy 'qrpgleref/P878.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'

dcl-ds theTable extname('T725') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T725 LIMIT 1;

theCharVar = 'Hello from P2418';
dsply theCharVar;
callp localProc();
P1171();
P878();
P549();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2418 in the procedure';
end-proc;