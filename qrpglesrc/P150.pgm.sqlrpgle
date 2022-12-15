**free

ctl-opt dftactgrp(*no);

dcl-pi P150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P150';
dsply theCharVar;
callp localProc();
P104();
P75();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P150 in the procedure';
end-proc;