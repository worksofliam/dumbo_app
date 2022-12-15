**free

ctl-opt dftactgrp(*no);

dcl-pi P1030;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'

dcl-ds theTable extname('T229') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T229 LIMIT 1;

theCharVar = 'Hello from P1030';
dsply theCharVar;
callp localProc();
P412();
P348();
P949();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1030 in the procedure';
end-proc;