**free

ctl-opt dftactgrp(*no);

dcl-pi P387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T1238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1238 LIMIT 1;

theCharVar = 'Hello from P387';
dsply theCharVar;
callp localProc();
P38();
P308();
P117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P387 in the procedure';
end-proc;