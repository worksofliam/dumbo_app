**free

ctl-opt dftactgrp(*no);

dcl-pi P33;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds theTable extname('T583') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T583 LIMIT 1;

theCharVar = 'Hello from P33';
dsply theCharVar;
callp localProc();
P19();
P23();
P15();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P33 in the procedure';
end-proc;