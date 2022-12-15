**free

ctl-opt dftactgrp(*no);

dcl-pi P2863;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P1507.rpgleinc'
/copy 'qrpgleref/P1985.rpgleinc'

dcl-ds theTable extname('T1106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1106 LIMIT 1;

theCharVar = 'Hello from P2863';
dsply theCharVar;
callp localProc();
P443();
P1507();
P1985();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2863 in the procedure';
end-proc;