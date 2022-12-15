**free

ctl-opt dftactgrp(*no);

dcl-pi P849;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds theTable extname('T652') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T652 LIMIT 1;

theCharVar = 'Hello from P849';
dsply theCharVar;
callp localProc();
P223();
P439();
P42();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P849 in the procedure';
end-proc;