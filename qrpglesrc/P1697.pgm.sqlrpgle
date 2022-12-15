**free

ctl-opt dftactgrp(*no);

dcl-pi P1697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P732.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds theTable extname('T1357') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1357 LIMIT 1;

theCharVar = 'Hello from P1697';
dsply theCharVar;
callp localProc();
P732();
P59();
P80();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1697 in the procedure';
end-proc;