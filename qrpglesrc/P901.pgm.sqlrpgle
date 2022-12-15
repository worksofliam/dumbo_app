**free

ctl-opt dftactgrp(*no);

dcl-pi P901;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P891.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'

dcl-ds theTable extname('T125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T125 LIMIT 1;

theCharVar = 'Hello from P901';
dsply theCharVar;
callp localProc();
P891();
P50();
P455();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P901 in the procedure';
end-proc;