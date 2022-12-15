**free

ctl-opt dftactgrp(*no);

dcl-pi P1784;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1646.rpgleinc'
/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P1461.rpgleinc'

dcl-ds theTable extname('T802') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T802 LIMIT 1;

theCharVar = 'Hello from P1784';
dsply theCharVar;
callp localProc();
P1646();
P647();
P1461();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1784 in the procedure';
end-proc;