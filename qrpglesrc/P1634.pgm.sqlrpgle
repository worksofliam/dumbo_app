**free

ctl-opt dftactgrp(*no);

dcl-pi P1634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P1153.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'

dcl-ds theTable extname('T1761') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1761 LIMIT 1;

theCharVar = 'Hello from P1634';
dsply theCharVar;
callp localProc();
P660();
P1153();
P901();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1634 in the procedure';
end-proc;