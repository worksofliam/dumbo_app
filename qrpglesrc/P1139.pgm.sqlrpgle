**free

ctl-opt dftactgrp(*no);

dcl-pi P1139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds theTable extname('T245') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T245 LIMIT 1;

theCharVar = 'Hello from P1139';
dsply theCharVar;
callp localProc();
P783();
P519();
P379();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1139 in the procedure';
end-proc;