**free

ctl-opt dftactgrp(*no);

dcl-pi P1320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'

dcl-ds theTable extname('T235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T235 LIMIT 1;

theCharVar = 'Hello from P1320';
dsply theCharVar;
callp localProc();
P252();
P61();
P820();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1320 in the procedure';
end-proc;