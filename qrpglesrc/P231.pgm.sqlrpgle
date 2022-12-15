**free

ctl-opt dftactgrp(*no);

dcl-pi P231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds theTable extname('T1594') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1594 LIMIT 1;

theCharVar = 'Hello from P231';
dsply theCharVar;
callp localProc();
P113();
P52();
P135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P231 in the procedure';
end-proc;