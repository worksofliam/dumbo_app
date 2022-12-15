**free

ctl-opt dftactgrp(*no);

dcl-pi P139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T7') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T7 LIMIT 1;

theCharVar = 'Hello from P139';
dsply theCharVar;
callp localProc();
P136();
P57();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P139 in the procedure';
end-proc;