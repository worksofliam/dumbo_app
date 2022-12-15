**free

ctl-opt dftactgrp(*no);

dcl-pi P5551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1764.rpgleinc'
/copy 'qrpgleref/P2893.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds theTable extname('T863') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T863 LIMIT 1;

theCharVar = 'Hello from P5551';
dsply theCharVar;
callp localProc();
P1764();
P2893();
P243();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5551 in the procedure';
end-proc;