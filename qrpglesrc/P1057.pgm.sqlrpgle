**free

ctl-opt dftactgrp(*no);

dcl-pi P1057;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1002.rpgleinc'
/copy 'qrpgleref/P769.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'

dcl-ds theTable extname('T484') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T484 LIMIT 1;

theCharVar = 'Hello from P1057';
dsply theCharVar;
callp localProc();
P1002();
P769();
P649();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1057 in the procedure';
end-proc;