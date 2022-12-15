**free

ctl-opt dftactgrp(*no);

dcl-pi P5411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3942.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P4564.rpgleinc'

dcl-ds theTable extname('T1841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1841 LIMIT 1;

theCharVar = 'Hello from P5411';
dsply theCharVar;
callp localProc();
P3942();
P554();
P4564();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5411 in the procedure';
end-proc;