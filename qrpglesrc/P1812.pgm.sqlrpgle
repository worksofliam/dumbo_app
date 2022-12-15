**free

ctl-opt dftactgrp(*no);

dcl-pi P1812;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P776.rpgleinc'
/copy 'qrpgleref/P1314.rpgleinc'
/copy 'qrpgleref/P741.rpgleinc'

dcl-ds theTable extname('T337') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T337 LIMIT 1;

theCharVar = 'Hello from P1812';
dsply theCharVar;
callp localProc();
P776();
P1314();
P741();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1812 in the procedure';
end-proc;