**free

ctl-opt dftactgrp(*no);

dcl-pi P383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds theTable extname('T256') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T256 LIMIT 1;

theCharVar = 'Hello from P383';
dsply theCharVar;
callp localProc();
P139();
P52();
P175();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P383 in the procedure';
end-proc;