**free

ctl-opt dftactgrp(*no);

dcl-pi P3306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2934.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P730.rpgleinc'

dcl-ds theTable extname('T481') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T481 LIMIT 1;

theCharVar = 'Hello from P3306';
dsply theCharVar;
callp localProc();
P2934();
P70();
P730();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3306 in the procedure';
end-proc;