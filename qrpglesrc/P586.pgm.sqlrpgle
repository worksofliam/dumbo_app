**free

ctl-opt dftactgrp(*no);

dcl-pi P586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'

dcl-ds theTable extname('T1075') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1075 LIMIT 1;

theCharVar = 'Hello from P586';
dsply theCharVar;
callp localProc();
P279();
P563();
P394();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P586 in the procedure';
end-proc;