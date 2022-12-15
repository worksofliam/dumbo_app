**free

ctl-opt dftactgrp(*no);

dcl-pi P3173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P2962.rpgleinc'

dcl-ds theTable extname('T84') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T84 LIMIT 1;

theCharVar = 'Hello from P3173';
dsply theCharVar;
callp localProc();
P524();
P980();
P2962();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3173 in the procedure';
end-proc;