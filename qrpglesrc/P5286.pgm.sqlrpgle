**free

ctl-opt dftactgrp(*no);

dcl-pi P5286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P861.rpgleinc'
/copy 'qrpgleref/P3871.rpgleinc'
/copy 'qrpgleref/P5141.rpgleinc'

dcl-ds theTable extname('T1606') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1606 LIMIT 1;

theCharVar = 'Hello from P5286';
dsply theCharVar;
callp localProc();
P861();
P3871();
P5141();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5286 in the procedure';
end-proc;