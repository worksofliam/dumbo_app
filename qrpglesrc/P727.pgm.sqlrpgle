**free

ctl-opt dftactgrp(*no);

dcl-pi P727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P727';
dsply theCharVar;
callp localProc();
P589();
P430();
P426();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P727 in the procedure';
end-proc;