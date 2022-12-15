**free

ctl-opt dftactgrp(*no);

dcl-pi P3347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2821.rpgleinc'
/copy 'qrpgleref/P3222.rpgleinc'
/copy 'qrpgleref/P1617.rpgleinc'

dcl-ds theTable extname('T592') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T592 LIMIT 1;

theCharVar = 'Hello from P3347';
dsply theCharVar;
callp localProc();
P2821();
P3222();
P1617();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3347 in the procedure';
end-proc;