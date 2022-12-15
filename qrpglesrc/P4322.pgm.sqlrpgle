**free

ctl-opt dftactgrp(*no);

dcl-pi P4322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P1043.rpgleinc'
/copy 'qrpgleref/P1594.rpgleinc'

dcl-ds theTable extname('T1382') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1382 LIMIT 1;

theCharVar = 'Hello from P4322';
dsply theCharVar;
callp localProc();
P26();
P1043();
P1594();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4322 in the procedure';
end-proc;