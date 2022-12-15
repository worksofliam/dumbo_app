**free

ctl-opt dftactgrp(*no);

dcl-pi P5131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1689.rpgleinc'
/copy 'qrpgleref/P945.rpgleinc'
/copy 'qrpgleref/P4057.rpgleinc'

dcl-ds theTable extname('T147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T147 LIMIT 1;

theCharVar = 'Hello from P5131';
dsply theCharVar;
callp localProc();
P1689();
P945();
P4057();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5131 in the procedure';
end-proc;