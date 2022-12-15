**free

ctl-opt dftactgrp(*no);

dcl-pi P2119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1072.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P1515.rpgleinc'

dcl-ds theTable extname('T966') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T966 LIMIT 1;

theCharVar = 'Hello from P2119';
dsply theCharVar;
callp localProc();
P1072();
P15();
P1515();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2119 in the procedure';
end-proc;