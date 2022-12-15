**free

ctl-opt dftactgrp(*no);

dcl-pi P90;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T121 LIMIT 1;

theCharVar = 'Hello from P90';
dsply theCharVar;
callp localProc();
P36();
P37();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P90 in the procedure';
end-proc;