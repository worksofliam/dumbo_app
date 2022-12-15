**free

ctl-opt dftactgrp(*no);

dcl-pi P484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'

dcl-ds theTable extname('T1033') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1033 LIMIT 1;

theCharVar = 'Hello from P484';
dsply theCharVar;
callp localProc();
P477();
P270();
P329();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P484 in the procedure';
end-proc;