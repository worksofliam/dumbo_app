**free

ctl-opt dftactgrp(*no);

dcl-pi P2630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'

dcl-ds theTable extname('T1015') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1015 LIMIT 1;

theCharVar = 'Hello from P2630';
dsply theCharVar;
callp localProc();
P1255();
P649();
P563();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2630 in the procedure';
end-proc;