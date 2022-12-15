**free

ctl-opt dftactgrp(*no);

dcl-pi P2600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1605.rpgleinc'
/copy 'qrpgleref/P741.rpgleinc'
/copy 'qrpgleref/P2189.rpgleinc'

dcl-ds theTable extname('T1008') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1008 LIMIT 1;

theCharVar = 'Hello from P2600';
dsply theCharVar;
callp localProc();
P1605();
P741();
P2189();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2600 in the procedure';
end-proc;