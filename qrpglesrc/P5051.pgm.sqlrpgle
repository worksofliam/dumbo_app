**free

ctl-opt dftactgrp(*no);

dcl-pi P5051;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2035.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P1831.rpgleinc'

dcl-ds theTable extname('T1418') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1418 LIMIT 1;

theCharVar = 'Hello from P5051';
dsply theCharVar;
callp localProc();
P2035();
P63();
P1831();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5051 in the procedure';
end-proc;