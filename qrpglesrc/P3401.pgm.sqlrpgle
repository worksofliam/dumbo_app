**free

ctl-opt dftactgrp(*no);

dcl-pi P3401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'

dcl-ds theTable extname('T1125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1125 LIMIT 1;

theCharVar = 'Hello from P3401';
dsply theCharVar;
callp localProc();
P774();
P15();
P450();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3401 in the procedure';
end-proc;