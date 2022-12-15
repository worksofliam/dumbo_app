**free

ctl-opt dftactgrp(*no);

dcl-pi P5616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1507.rpgleinc'
/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P4879.rpgleinc'

dcl-ds theTable extname('T73') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T73 LIMIT 1;

theCharVar = 'Hello from P5616';
dsply theCharVar;
callp localProc();
P1507();
P1264();
P4879();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5616 in the procedure';
end-proc;