**free

ctl-opt dftactgrp(*no);

dcl-pi P1291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T187 LIMIT 1;

theCharVar = 'Hello from P1291';
dsply theCharVar;
callp localProc();
P633();
P742();
P295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1291 in the procedure';
end-proc;