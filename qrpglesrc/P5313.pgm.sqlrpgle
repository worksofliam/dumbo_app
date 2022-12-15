**free

ctl-opt dftactgrp(*no);

dcl-pi P5313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3026.rpgleinc'
/copy 'qrpgleref/P5024.rpgleinc'
/copy 'qrpgleref/P1422.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P5313';
dsply theCharVar;
callp localProc();
P3026();
P5024();
P1422();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5313 in the procedure';
end-proc;