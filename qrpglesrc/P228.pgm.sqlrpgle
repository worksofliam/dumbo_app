**free

ctl-opt dftactgrp(*no);

dcl-pi P228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T355') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T355 LIMIT 1;

theCharVar = 'Hello from P228';
dsply theCharVar;
callp localProc();
P51();
P167();
P117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P228 in the procedure';
end-proc;