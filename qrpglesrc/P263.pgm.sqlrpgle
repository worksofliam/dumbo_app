**free

ctl-opt dftactgrp(*no);

dcl-pi P263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'

dcl-ds theTable extname('T241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T241 LIMIT 1;

theCharVar = 'Hello from P263';
dsply theCharVar;
callp localProc();
P88();
P60();
P155();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P263 in the procedure';
end-proc;