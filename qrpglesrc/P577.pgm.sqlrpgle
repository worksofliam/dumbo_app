**free

ctl-opt dftactgrp(*no);

dcl-pi P577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'

dcl-ds theTable extname('T1733') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1733 LIMIT 1;

theCharVar = 'Hello from P577';
dsply theCharVar;
callp localProc();
P382();
P229();
P434();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P577 in the procedure';
end-proc;