**free

ctl-opt dftactgrp(*no);

dcl-pi P3167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1850.rpgleinc'
/copy 'qrpgleref/P1201.rpgleinc'
/copy 'qrpgleref/P2944.rpgleinc'

dcl-ds theTable extname('T286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T286 LIMIT 1;

theCharVar = 'Hello from P3167';
dsply theCharVar;
callp localProc();
P1850();
P1201();
P2944();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3167 in the procedure';
end-proc;