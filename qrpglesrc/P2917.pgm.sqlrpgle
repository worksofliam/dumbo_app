**free

ctl-opt dftactgrp(*no);

dcl-pi P2917;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P744.rpgleinc'
/copy 'qrpgleref/P1828.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P2917';
dsply theCharVar;
callp localProc();
P263();
P744();
P1828();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2917 in the procedure';
end-proc;