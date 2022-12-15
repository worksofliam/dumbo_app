**free

ctl-opt dftactgrp(*no);

dcl-pi P2727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1269.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P686.rpgleinc'

dcl-ds theTable extname('T86') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T86 LIMIT 1;

theCharVar = 'Hello from P2727';
dsply theCharVar;
callp localProc();
P1269();
P225();
P686();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2727 in the procedure';
end-proc;