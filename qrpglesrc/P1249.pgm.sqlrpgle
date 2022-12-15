**free

ctl-opt dftactgrp(*no);

dcl-pi P1249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'

dcl-ds theTable extname('T780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T780 LIMIT 1;

theCharVar = 'Hello from P1249';
dsply theCharVar;
callp localProc();
P81();
P596();
P515();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1249 in the procedure';
end-proc;