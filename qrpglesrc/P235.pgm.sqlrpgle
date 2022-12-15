**free

ctl-opt dftactgrp(*no);

dcl-pi P235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds theTable extname('T973') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T973 LIMIT 1;

theCharVar = 'Hello from P235';
dsply theCharVar;
callp localProc();
P143();
P66();
P80();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P235 in the procedure';
end-proc;