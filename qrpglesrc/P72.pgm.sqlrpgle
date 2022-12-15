**free

ctl-opt dftactgrp(*no);

dcl-pi P72;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P72';
dsply theCharVar;
callp localProc();
P45();
P67();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P72 in the procedure';
end-proc;