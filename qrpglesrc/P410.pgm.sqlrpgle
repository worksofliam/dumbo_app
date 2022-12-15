**free

ctl-opt dftactgrp(*no);

dcl-pi P410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'

dcl-ds theTable extname('T420') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T420 LIMIT 1;

theCharVar = 'Hello from P410';
dsply theCharVar;
callp localProc();
P201();
P310();
P257();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P410 in the procedure';
end-proc;