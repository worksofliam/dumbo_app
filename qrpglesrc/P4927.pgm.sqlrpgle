**free

ctl-opt dftactgrp(*no);

dcl-pi P4927;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P4659.rpgleinc'
/copy 'qrpgleref/P3543.rpgleinc'

dcl-ds theTable extname('T1403') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1403 LIMIT 1;

theCharVar = 'Hello from P4927';
dsply theCharVar;
callp localProc();
P717();
P4659();
P3543();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4927 in the procedure';
end-proc;