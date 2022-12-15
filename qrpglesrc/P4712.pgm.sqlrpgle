**free

ctl-opt dftactgrp(*no);

dcl-pi P4712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3589.rpgleinc'
/copy 'qrpgleref/P4179.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'

dcl-ds theTable extname('T1047') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1047 LIMIT 1;

theCharVar = 'Hello from P4712';
dsply theCharVar;
callp localProc();
P3589();
P4179();
P258();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4712 in the procedure';
end-proc;