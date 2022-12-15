**free

ctl-opt dftactgrp(*no);

dcl-pi P2024;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1107.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P1353.rpgleinc'

dcl-ds theTable extname('T593') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T593 LIMIT 1;

theCharVar = 'Hello from P2024';
dsply theCharVar;
callp localProc();
P1107();
P85();
P1353();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2024 in the procedure';
end-proc;