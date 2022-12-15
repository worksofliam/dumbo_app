**free

ctl-opt dftactgrp(*no);

dcl-pi P821;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P821';
dsply theCharVar;
callp localProc();
P15();
P247();
P682();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P821 in the procedure';
end-proc;