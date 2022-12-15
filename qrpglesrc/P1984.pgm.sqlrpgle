**free

ctl-opt dftactgrp(*no);

dcl-pi P1984;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P1856.rpgleinc'

dcl-ds theTable extname('T157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T157 LIMIT 1;

theCharVar = 'Hello from P1984';
dsply theCharVar;
callp localProc();
P533();
P631();
P1856();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1984 in the procedure';
end-proc;