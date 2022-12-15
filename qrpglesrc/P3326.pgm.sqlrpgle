**free

ctl-opt dftactgrp(*no);

dcl-pi P3326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P2574.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'

dcl-ds theTable extname('T394') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T394 LIMIT 1;

theCharVar = 'Hello from P3326';
dsply theCharVar;
callp localProc();
P323();
P2574();
P694();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3326 in the procedure';
end-proc;