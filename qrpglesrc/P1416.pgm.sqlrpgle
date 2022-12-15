**free

ctl-opt dftactgrp(*no);

dcl-pi P1416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds theTable extname('T191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T191 LIMIT 1;

theCharVar = 'Hello from P1416';
dsply theCharVar;
callp localProc();
P699();
P182();
P324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1416 in the procedure';
end-proc;