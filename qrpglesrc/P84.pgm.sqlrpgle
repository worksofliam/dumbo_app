**free

ctl-opt dftactgrp(*no);

dcl-pi P84;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T101 LIMIT 1;

theCharVar = 'Hello from P84';
dsply theCharVar;
callp localProc();
P46();
P73();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P84 in the procedure';
end-proc;