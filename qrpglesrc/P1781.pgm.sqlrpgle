**free

ctl-opt dftactgrp(*no);

dcl-pi P1781;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P1269.rpgleinc'

dcl-ds theTable extname('T1201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1201 LIMIT 1;

theCharVar = 'Hello from P1781';
dsply theCharVar;
callp localProc();
P144();
P160();
P1269();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1781 in the procedure';
end-proc;