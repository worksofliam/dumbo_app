**free

ctl-opt dftactgrp(*no);

dcl-pi P3635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P840.rpgleinc'
/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'

dcl-ds theTable extname('T1679') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1679 LIMIT 1;

theCharVar = 'Hello from P3635';
dsply theCharVar;
callp localProc();
P840();
P1660();
P504();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3635 in the procedure';
end-proc;