**free

ctl-opt dftactgrp(*no);

dcl-pi P2467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'

dcl-ds theTable extname('T543') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T543 LIMIT 1;

theCharVar = 'Hello from P2467';
dsply theCharVar;
callp localProc();
P185();
P57();
P223();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2467 in the procedure';
end-proc;