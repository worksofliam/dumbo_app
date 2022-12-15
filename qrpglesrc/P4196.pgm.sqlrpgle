**free

ctl-opt dftactgrp(*no);

dcl-pi P4196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3263.rpgleinc'
/copy 'qrpgleref/P4129.rpgleinc'
/copy 'qrpgleref/P2836.rpgleinc'

dcl-ds theTable extname('T289') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T289 LIMIT 1;

theCharVar = 'Hello from P4196';
dsply theCharVar;
callp localProc();
P3263();
P4129();
P2836();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4196 in the procedure';
end-proc;