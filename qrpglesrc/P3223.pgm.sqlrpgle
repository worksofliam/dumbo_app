**free

ctl-opt dftactgrp(*no);

dcl-pi P3223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'

dcl-ds theTable extname('T256') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T256 LIMIT 1;

theCharVar = 'Hello from P3223';
dsply theCharVar;
callp localProc();
P407();
P972();
P678();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3223 in the procedure';
end-proc;