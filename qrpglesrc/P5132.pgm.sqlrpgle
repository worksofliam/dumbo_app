**free

ctl-opt dftactgrp(*no);

dcl-pi P5132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3093.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'
/copy 'qrpgleref/P1634.rpgleinc'

dcl-ds theTable extname('T480') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T480 LIMIT 1;

theCharVar = 'Hello from P5132';
dsply theCharVar;
callp localProc();
P3093();
P1066();
P1634();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5132 in the procedure';
end-proc;