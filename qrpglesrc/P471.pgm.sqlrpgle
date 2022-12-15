**free

ctl-opt dftactgrp(*no);

dcl-pi P471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds theTable extname('T443') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T443 LIMIT 1;

theCharVar = 'Hello from P471';
dsply theCharVar;
callp localProc();
P378();
P67();
P261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P471 in the procedure';
end-proc;