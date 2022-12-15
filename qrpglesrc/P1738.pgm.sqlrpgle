**free

ctl-opt dftactgrp(*no);

dcl-pi P1738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P1589.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P1738';
dsply theCharVar;
callp localProc();
P660();
P1589();
P288();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1738 in the procedure';
end-proc;