**free

ctl-opt dftactgrp(*no);

dcl-pi P252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'

dcl-ds theTable extname('T736') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T736 LIMIT 1;

theCharVar = 'Hello from P252';
dsply theCharVar;
callp localProc();
P67();
P246();
P87();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P252 in the procedure';
end-proc;