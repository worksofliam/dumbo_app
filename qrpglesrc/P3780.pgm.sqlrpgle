**free

ctl-opt dftactgrp(*no);

dcl-pi P3780;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1734.rpgleinc'
/copy 'qrpgleref/P3290.rpgleinc'
/copy 'qrpgleref/P1661.rpgleinc'

dcl-ds theTable extname('T883') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T883 LIMIT 1;

theCharVar = 'Hello from P3780';
dsply theCharVar;
callp localProc();
P1734();
P3290();
P1661();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3780 in the procedure';
end-proc;