**free

ctl-opt dftactgrp(*no);

dcl-pi P752;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P504.rpgleinc'
/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'

dcl-ds theTable extname('T337') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T337 LIMIT 1;

theCharVar = 'Hello from P752';
dsply theCharVar;
callp localProc();
P504();
P576();
P229();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P752 in the procedure';
end-proc;