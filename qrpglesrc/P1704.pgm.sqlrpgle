**free

ctl-opt dftactgrp(*no);

dcl-pi P1704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P645.rpgleinc'
/copy 'qrpgleref/P1243.rpgleinc'
/copy 'qrpgleref/P1269.rpgleinc'

dcl-ds T518 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T518 FROM T518 LIMIT 1;

theCharVar = 'Hello from P1704';
dsply theCharVar;
callp localProc();
P645();
P1243();
P1269();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1704 in the procedure';
end-proc;