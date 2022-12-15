**free

ctl-opt dftactgrp(*no);

dcl-pi P434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds theTable extname('T1755') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1755 LIMIT 1;

theCharVar = 'Hello from P434';
dsply theCharVar;
callp localProc();
P102();
P236();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P434 in the procedure';
end-proc;