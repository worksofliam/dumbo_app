**free

ctl-opt dftactgrp(*no);

dcl-pi P3510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3330.rpgleinc'
/copy 'qrpgleref/P2659.rpgleinc'
/copy 'qrpgleref/P2148.rpgleinc'

dcl-ds theTable extname('T1708') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1708 LIMIT 1;

theCharVar = 'Hello from P3510';
dsply theCharVar;
callp localProc();
P3330();
P2659();
P2148();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3510 in the procedure';
end-proc;