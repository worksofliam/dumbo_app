**free

ctl-opt dftactgrp(*no);

dcl-pi P1381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P743.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P1375.rpgleinc'

dcl-ds theTable extname('T245') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T245 LIMIT 1;

theCharVar = 'Hello from P1381';
dsply theCharVar;
callp localProc();
P743();
P299();
P1375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1381 in the procedure';
end-proc;